// Copyright 2020-2022 Ewout Prangsma
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// Author Ewout Prangsma
//

package v1

const (
	// Following service types are well known constants exposing
	// services over mDNS (zeroconf).

	// Service type for implementations of the GRPC CommandStationService service.
	ServiceTypeCommandStation = "_cs._binkynet._tcp"
	// Service type for implementations of the GRPC LogProviderService service.
	ServiceTypeLogProvider = "_lp._binkynet._tcp"
	// Service type for implementations of the GRPC NetworkControlService service.
	ServiceTypeNetworkControl = "_nwctrl._binkynet._tcp"

	// Service type for implementations of the Loki log receiver protocol.
	ServiceTypeLokiProvider = "_lokip._binkynet._tcp"
	// Service type for implementations of the Prometheus metrics protocol.
	ServiceTypePrometheusProvider = "_prometheusp._binkynet._tcp"
)
