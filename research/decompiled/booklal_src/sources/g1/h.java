package g1;

import java.security.MessageDigest;
import z1.C1010h;
import z1.InterfaceC1007e;
/* loaded from: classes.dex */
public final class h implements InterfaceC1007e {

    /* renamed from: a  reason: collision with root package name */
    public final MessageDigest f7382a;

    /* renamed from: b  reason: collision with root package name */
    public final C1010h f7383b = new Object();

    /* JADX WARN: Type inference failed for: r0v0, types: [z1.h, java.lang.Object] */
    public h(MessageDigest messageDigest) {
        this.f7382a = messageDigest;
    }

    @Override // z1.InterfaceC1007e
    public final C1010h d() {
        return this.f7383b;
    }
}
