package J2;
/* loaded from: classes2.dex */
public abstract class a implements g {

    /* renamed from: a  reason: collision with root package name */
    public final String f1181a;

    public a(String str) {
        this.f1181a = str;
    }

    public abstract boolean a(char c5);

    @Override // J2.g
    public final boolean apply(Object obj) {
        return a(((Character) obj).charValue());
    }

    public final String toString() {
        return this.f1181a;
    }
}
