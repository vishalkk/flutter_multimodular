

import 'package:data/networkInfo/network_info.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
class NetworkInfoImpl extends NetworkInfo {
  @override
  Future<bool> get isConnected async {
    final connectivityResult = await Connectivity().checkConnectivity();
    final isConnected = connectivityResult == ConnectivityResult.wifi ||
                        connectivityResult == ConnectivityResult.mobile ||
                        connectivityResult == ConnectivityResult.ethernet;
    return isConnected;
    
  }
  
}