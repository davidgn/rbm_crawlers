package androidx.fragment.app;

import e.AbstractC0383c;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: androidx.fragment.app.s  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0241s extends AbstractC0383c {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AtomicReference f4333a;

    public C0241s(AtomicReference atomicReference) {
        this.f4333a = atomicReference;
    }

    @Override // e.AbstractC0383c
    public final void a(Object obj) {
        AbstractC0383c abstractC0383c = (AbstractC0383c) this.f4333a.get();
        if (abstractC0383c == null) {
            throw new IllegalStateException("Operation cannot be started before fragment is in created state");
        }
        abstractC0383c.a(obj);
    }
}
