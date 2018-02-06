* Base64 encode your api-token: `./init.sh [api-token]`
* Add the value to `values-override.yaml`
* Install the chart

    `helm install --name soil1 -f values-override.yaml .`