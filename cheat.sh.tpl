#! /bin/sh

set -e

if [ -z "$FLOW_HOME" ]; then
  export YOSYS_CMD={YOSYS_PATH}
  export OPENROAD_EXE={OPENROAD_PATH}
  export KLAYOUT_CMD={KLAYOUT_PATH}
  export FLOW_HOME={FLOW_HOME}
  export TCL_LIBRARY={TCL_LIBRARY}
fi

exec make --file "$FLOW_HOME/Makefile" "$@"
