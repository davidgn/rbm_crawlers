package i1;

import java.util.ArrayDeque;
import y1.C0991h;
/* loaded from: classes.dex */
public final class n extends C0991h {
    @Override // y1.C0991h
    public final void c(Object obj, Object obj2) {
        o oVar = (o) obj;
        oVar.getClass();
        ArrayDeque arrayDeque = o.f7823b;
        synchronized (arrayDeque) {
            arrayDeque.offer(oVar);
        }
    }
}
