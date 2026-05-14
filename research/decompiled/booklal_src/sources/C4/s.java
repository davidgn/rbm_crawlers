package C4;

import java.util.List;
import k4.InterfaceC0558a;
/* loaded from: classes2.dex */
public final class s extends kotlin.jvm.internal.j implements InterfaceC0558a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f554a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ List f555b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ s(List list, int i) {
        super(0);
        this.f554a = i;
        this.f555b = list;
    }

    @Override // k4.InterfaceC0558a
    public final Object invoke() {
        switch (this.f554a) {
            case 0:
                return this.f555b;
            default:
                return this.f555b;
        }
    }
}
