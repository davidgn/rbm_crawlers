package a4;

import java.util.Comparator;
import kotlin.jvm.internal.i;
/* renamed from: a4.a  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0213a implements Comparator {

    /* renamed from: b  reason: collision with root package name */
    public static final C0213a f3580b = new C0213a(0);

    /* renamed from: c  reason: collision with root package name */
    public static final C0213a f3581c = new C0213a(1);

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f3582a;

    public /* synthetic */ C0213a(int i) {
        this.f3582a = i;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f3582a) {
            case 0:
                Comparable a5 = (Comparable) obj;
                Comparable b5 = (Comparable) obj2;
                i.f(a5, "a");
                i.f(b5, "b");
                return a5.compareTo(b5);
            default:
                Comparable a6 = (Comparable) obj;
                Comparable b6 = (Comparable) obj2;
                i.f(a6, "a");
                i.f(b6, "b");
                return b6.compareTo(a6);
        }
    }

    @Override // java.util.Comparator
    public final Comparator reversed() {
        switch (this.f3582a) {
            case 0:
                return f3581c;
            default:
                return f3580b;
        }
    }
}
