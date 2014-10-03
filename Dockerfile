FROM debian:jessie

ADD wait-for-signals.sh /

ENTRYPOINT ["/wait-for-signals.sh"]

# # This form would not forward command line arguments:
# ENTRYPOINT /wait-for-signals.sh
