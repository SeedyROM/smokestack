#
# Initial implmentation for reference!
#
# {% for var in @type.instance_vars %}
#     {% if @type.has_method? var.name %}
#         {{ var.name }}: {{ var.type }},
#     {% end %}
# {% end %}

class Mock(T)
    private macro compute_valid_properties
        {
            {% for var in T.instance_vars %}
                {% if T.has_method? var.name %}
                    :{{ var.name }} => {{ var.type }},
                {% end %}
            {% end %}
        }
    end

    def valid_properties
        {% if T.instance_vars.size > 0 %}
            compute_valid_properties
        {% end %}
    end

    def initialize
        puts valid_properties
    end

    def create(*args)
        T.new(*args)
    end
end