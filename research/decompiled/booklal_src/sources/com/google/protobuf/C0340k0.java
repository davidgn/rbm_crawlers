package com.google.protobuf;
/* renamed from: com.google.protobuf.k0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0340k0 implements InterfaceC0353r0 {

    /* renamed from: a  reason: collision with root package name */
    public InterfaceC0353r0[] f6730a;

    @Override // com.google.protobuf.InterfaceC0353r0
    public final F0 a(Class cls) {
        InterfaceC0353r0[] interfaceC0353r0Arr;
        for (InterfaceC0353r0 interfaceC0353r0 : this.f6730a) {
            if (interfaceC0353r0.b(cls)) {
                return interfaceC0353r0.a(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // com.google.protobuf.InterfaceC0353r0
    public final boolean b(Class cls) {
        for (InterfaceC0353r0 interfaceC0353r0 : this.f6730a) {
            if (interfaceC0353r0.b(cls)) {
                return true;
            }
        }
        return false;
    }
}
