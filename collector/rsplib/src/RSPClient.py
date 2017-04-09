# -*- coding: utf-8 -*-
import requests
import json

default_headers = {
          'Content-Type': 'application/x-www-form-urlencoded',
          'Access-Control-Allow-Origin': '*'
        }

class RSPClient(object):

    def __init__(self, endpoint, port):
        self.endpoint = endpoint;
        self.port = port;
        self.base = self.endpoint+":"+str(self.port);

    def _result(self, resp):
        return resp.json();

    def _observer(self, q, o, spec):
        if(req['type'] == 'ws'):
            print("websocket observer") 
        else:
            print("http observer")
        return self._result(resp)

    def streams(self):
        r = requests.get(self.base+"/streams")
        print (r._content())
        return self._result(r);

    def stream(self, s):
        r = requests.get(self.base+"/streams/" + s)
        return self._result(r);

    def register_stream(self, stream_name, stream_URI):
        r = requests.post(self.base+"/streams/"+stream_name, data = {'streamIri': stream_URI }, headers=default_headers);
        return self._result(r);

    def unregister_stream(self, s):
        r = requests.delete(self.base+"/streams/"+s);
        return self._result(r);

    def queries(self):
        r = requests.get(self.base+"/queries");
        return self._result(r);

    def query(self, q):
        r = requests.get(self.base+"/queries/" + q);
        return self._result(r);

    def register_query(self, q, body):        
        r = requests.post(self.base+"/queries/" + q, data = { 'queryBody': body }, headers=default_headers);
        return self._result(r);

    def unregister_query(self, q):
        r = requests.delete(self.base + "/queries/" + q);
        return self._result(r);

    def observers(self, q):
        r = requests.get(self.base + "/queries/" + q + "/observers");
        return self._result(r);

    def observer(self, q, o):
        r = requests.get(self.base + "/queries/" + q + "/observers/" + o);
        return self._result(r);

    def register_observer(self, q, obs_name, obs_spec ):        
        r = requests.post(self.base+"/queries/" + q + "/observers/" + obs_name, data = obs_spec, headers=default_headers);
        return self._result(r);

    def new_observer(self, q, obs_name, obs_spec):
        self.register_observer(q, obs_name, obs_spec);
        return self.observer(q, obs_name);

    def unregister_observer(self, q, o):
        r = requests.delete(self.base+"/queries/" + q + "/observers/" + o);
        return self._result(r);

    def engine(self):
        r = requests.get(self.base+"/engine")
        return self._result(r);
