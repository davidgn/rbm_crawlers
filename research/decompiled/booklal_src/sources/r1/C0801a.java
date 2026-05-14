package r1;

import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;
import y1.AbstractC0994k;
/* renamed from: r1.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0801a implements InterfaceC0804d {

    /* renamed from: a  reason: collision with root package name */
    public final Set f9959a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b  reason: collision with root package name */
    public boolean f9960b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f9961c;

    @Override // r1.InterfaceC0804d
    public final void a(InterfaceC0805e interfaceC0805e) {
        this.f9959a.remove(interfaceC0805e);
    }

    public final void b() {
        this.f9960b = true;
        Iterator it = AbstractC0994k.d(this.f9959a).iterator();
        while (it.hasNext()) {
            ((InterfaceC0805e) it.next()).onStart();
        }
    }

    @Override // r1.InterfaceC0804d
    public final void h(InterfaceC0805e interfaceC0805e) {
        this.f9959a.add(interfaceC0805e);
        if (this.f9961c) {
            interfaceC0805e.onDestroy();
        } else if (this.f9960b) {
            interfaceC0805e.onStart();
        } else {
            interfaceC0805e.onStop();
        }
    }
}
