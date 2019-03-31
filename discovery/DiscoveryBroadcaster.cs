using BinkyNet.Apis.V1;
using Google.Protobuf;
using System;
using System.IO;
using System.Net;
using System.Net.Sockets;
using System.Threading;
using System.Threading.Tasks;

namespace BinkyNet.Discovery
{
    public class DiscoveryBroadcaster
    {
        private readonly UdpClient client = new UdpClient();
        private readonly byte[] msgData;
        private CancellationTokenSource ctSource;

        public DiscoveryBroadcaster(NetworkMasterInfo msg)
        {
            client.EnableBroadcast = true;
            var ms = new MemoryStream();
            using (var cos = new CodedOutputStream(ms))
            {
                msg.WriteTo(cos);
            }
            msgData = ms.ToArray();
        }

        public void Start()
        {
            if (ctSource == null)
            {
                ctSource = new CancellationTokenSource();
                startBroadcaster(ctSource.Token);
            }
        }

        public void Stop()
        {
            if (ctSource != null)
            {
                ctSource.Cancel();
            }
        }

        public async Task startBroadcaster(CancellationToken cancellationToken)
        {

            await Task.Run(async () =>
            {
                while (true)
                {
                    client.EnableBroadcast = true;
                    client.Send(msgData, msgData.Length, new IPEndPoint(IPAddress.Broadcast, (int)Ports.Discovery));
                    await Task.Delay(2000, cancellationToken);
                    if (cancellationToken.IsCancellationRequested)
                        break;
                }
            });

        }
    }
}
