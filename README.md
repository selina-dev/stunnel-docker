# stunnel Docker image

Easy-to-use stunnel Docker image. All you need to do is mount a valid `stunnel.conf` onto the 
`/etc/stunnel/stunnel.conf` path of the container and any other files referenced within the 
`stunnel.conf` file to their chosen locations. This includes certificates and keys.

### How to use

```
docker run -v /path/to/stunnel.conf:/etc/stunnel/stunnel.conf -v /path/to/stunnel.pem:/etc/stunnel/stunnel.pem [-p ingress port 1 ...] selina/stunnel
```

The optional `-p ingress port 1 ...` part is necessary for exposing the ports through which the traffic will be tunneled. The actual port numbers are
defined by the `stunnel.conf` file.

