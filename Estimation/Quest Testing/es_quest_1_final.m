function q_bi = es_quest_1_final(lam, m_B, v_z)
%UNTITLED This function calculates the final quaternion using quest1
%   input: (lam, B)
%   ouput: q (the final quaternion)

%%
o = lam + trace(m_B);
m_S = m_B + m_B';
v_p = size(m_B);

%%

q_bi = [adjoint(o * eye(v_p(2)) - m_S) * v_z ; det(o * eye(v_p(2)) - m_S)];
w = norm(q_bi);

q_bi = q_bi / w;

end

