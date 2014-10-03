FROM debian:jessie

ADD wait-for-signals.sh /
ADD wait-for-signals-2.sh /

ENTRYPOINT ["/wait-for-signals.sh"]
# ENTRYPOINT ["/wait-for-signals-2.sh"]

# # This form would not forward command line arguments:
# ENTRYPOINT /wait-for-signals.sh
