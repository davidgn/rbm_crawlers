package m3;

import j3.W;
import j3.X;
/* renamed from: m3.h  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0735h extends X {
    @Override // j3.X
    public W a(String str) {
        return C0734g.forTarget(str);
    }

    @Override // j3.X
    public boolean b() {
        return true;
    }

    @Override // j3.X
    public int c() {
        try {
            Class.forName("android.app.Application", false, C0735h.class.getClassLoader());
            return 8;
        } catch (Exception unused) {
            return 3;
        }
    }
}
