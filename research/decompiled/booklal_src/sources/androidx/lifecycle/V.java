package androidx.lifecycle;

import i0.C0467d;
/* loaded from: classes.dex */
public interface V {
    default S a(Class cls) {
        throw new UnsupportedOperationException("Factory.create(String) is unsupported.  This Factory requires `CreationExtras` to be passed into `create` method.");
    }

    default S b(Class cls, C0467d c0467d) {
        return a(cls);
    }
}
