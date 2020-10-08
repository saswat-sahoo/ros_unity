using System.Collections;
using System.Text;
using SimpleJSON;


namespace ROSBridgeLib {
namespace CombinedInfo {
		public class Info : ROSBridgeMsg {
                  private Vector3Msg _linear;
			private Vector3Msg _angular;
                   private Vector3Msg _rota;
			
			public Info(JSONNode msg) {
				_linear = new Vector3Msg(msg["linear"]);
				_angular = new Vector3Msg(msg["angular"]);
                                 _rota = new Vector3Msg(msg["rota"]);
                                 
			}
			
			public Info(Vector3Msg linear, Vector3Msg angular,Vector3Msg rota) {
				_linear = linear;
				_angular = angular;
                                  _rota = rota;
                                 
			}
                 public static string GetMessageType() {
				return "CombinedInfo/Info";
			}
			
			public Vector3Msg GetLinear() {
				return _linear;
			}

			public Vector3Msg GetAngular() {
				return _angular;
			}
			public Vector3Msg Getrota() {
				return _rota;
			}
                     public override string ToString() {
				return "Info [linear=" + _linear.ToString() + ",  angular=" + _angular.ToString() + " , rota=" + _rota.ToString() + "]";
			}
			
			public override string ToYAMLString() {
				return "{\"linear\" : " + _linear.ToYAMLString() + ", \"angular\" : " + _angular.ToYAMLString() + ",\"rota\" : " + _rota.ToYAMLString() + "}";
			}
}



    }
}
