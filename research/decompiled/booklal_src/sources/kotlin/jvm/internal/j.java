package kotlin.jvm.internal;

import java.io.Serializable;
/* loaded from: classes2.dex */
public abstract class j implements f, Serializable {
    private final int arity;

    public j(int i) {
        this.arity = i;
    }

    @Override // kotlin.jvm.internal.f
    public int getArity() {
        return this.arity;
    }

    public String toString() {
        n.f8359a.getClass();
        String a5 = o.a(this);
        i.e(a5, "renderLambdaToString(this)");
        return a5;
    }
}
