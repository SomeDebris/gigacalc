%% Problem 1

function [R,E] = myBisection(f,a,b,tol)
    R = [];

    m_a = a;
    m_b = b;

    for i = 1:100000
        center = (m_a + m_b) / 2;
        f_test = f(center);
        close_test = (m_b - m_a) / 2;

        R(i) = center;
        E(i) = abs(f( R(i) ));

        if (f_test == 0 || E(i) < tol)
            break;
        end

        if ( sign(f_test) == sign(f(m_a)) )
            m_a = center;
        else
            m_b = center;
        end
    end
end

