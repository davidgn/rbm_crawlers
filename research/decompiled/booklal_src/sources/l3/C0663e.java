package l3;

import java.util.concurrent.atomic.AtomicLong;
/* renamed from: l3.e  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0663e implements InterfaceC0714w0 {

    /* renamed from: a  reason: collision with root package name */
    public final AtomicLong f9194a;

    public C0663e(int i) {
        switch (i) {
            case 1:
                this.f9194a = new AtomicLong();
                return;
            default:
                this.f9194a = new AtomicLong();
                return;
        }
    }

    @Override // l3.InterfaceC0714w0
    public void a() {
        this.f9194a.getAndAdd(1L);
    }
}
