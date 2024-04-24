<h1 align=center>TAK Media Server Infra</h1>

<p align=center>Infrastructure to support a TAK Compatible Media Server</p>

## Ports

| Port | Notes |
| ---- | ----- |
| 8554 | RTSP `rtsp://<server>:8554/<mystream>` |
| 8889 | WebRTC `http://<server>:8889/<mystream>/publish` |
| 8890 | SRT `srt://localhost:8890?streamid=publish:mystream&pkt_size=1316` |

## AWS Deployment

### Media Deployment

From the root directory, install the deploy dependencies

```sh
npm install
```

Deployment to AWS is handled via AWS Cloudformation. The template can be found in the `./cloudformation`
directory. The deployment itself is performed by [Deploy](https://github.com/openaddresses/deploy) which
was installed in the previous step.

The deploy tool can be run via the following

```sh
npx deploy
```

To install it globally - view the deploy [README](https://github.com/openaddresses/deploy)

Deploy uses your existing AWS credentials. Ensure that your `~/.aws/credentials` has an entry like:

```
[coe]
aws_access_key_id = <redacted>
aws_secret_access_key = <redacted>
```

Deployment can then be performed via the following:

```
npx deploy create <stack>
npx deploy update <stack>
npx deploy info <stack> --outputs
npx deploy info <stack> --parameters
```

Stacks can be created, deleted, cancelled, etc all via the deploy tool. For further information
information about `deploy` functionality run the following for help.

```sh
npx deploy
```

Further help about a specific command can be obtained via something like:

```sh
npx deploy info --help
```

