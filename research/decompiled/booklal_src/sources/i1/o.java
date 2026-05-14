package i1;

import java.util.ArrayDeque;
import y1.AbstractC0994k;
/* loaded from: classes.dex */
public final class o {

    /* renamed from: b  reason: collision with root package name */
    public static final ArrayDeque f7823b;

    /* renamed from: a  reason: collision with root package name */
    public Object f7824a;

    static {
        char[] cArr = AbstractC0994k.f11549a;
        f7823b = new ArrayDeque(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static o a(Object obj) {
        o oVar;
        o oVar2;
        ArrayDeque arrayDeque = f7823b;
        synchronized (arrayDeque) {
            oVar = (o) arrayDeque.poll();
            oVar2 = oVar;
        }
        if (oVar == null) {
            oVar2 = new Object();
        }
        oVar2.f7824a = obj;
        return oVar2;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof o) {
            o oVar = (o) obj;
            oVar.getClass();
            return this.f7824a.equals(oVar.f7824a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f7824a.hashCode();
    }
}
