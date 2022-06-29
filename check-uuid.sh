#!/bin/bash

#!/bin/bash
uuid="7632f5ab-4bac-11e6-bcb7-0cc47a6c4dbd"
if [[ $uuid =~ ^\{?[A-F0-9a-f]{8}-[A-F0-9a-f]{4}-[A-F0-9a-f]{4}-[A-F0-9a-f]{4}-[A-F0-9a-f]{12}\}?$ ]]; then
    echo "true"
else
    echo "false"
fi


http POST ":8001/licenses" payload=@kgo/demo-license.trueability.json --ignore-stdin