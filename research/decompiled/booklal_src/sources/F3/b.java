package F3;

import H3.c;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class b implements c {

    /* renamed from: a  reason: collision with root package name */
    public static final b f913a;

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ b[] f914b;

    /* JADX WARN: Type inference failed for: r0v0, types: [F3.b, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [F3.b, java.lang.Enum] */
    static {
        ?? r02 = new Enum("INSTANCE", 0);
        f913a = r02;
        f914b = new b[]{r02, new Enum("NEVER", 1)};
    }

    public static b valueOf(String str) {
        return (b) Enum.valueOf(b.class, str);
    }

    public static b[] values() {
        return (b[]) f914b.clone();
    }

    @Override // B3.b
    public final void b() {
    }

    @Override // H3.h
    public final void clear() {
    }

    @Override // H3.d
    public final int g(int i) {
        return 2;
    }

    @Override // H3.h
    public final boolean isEmpty() {
        return true;
    }

    @Override // H3.h
    public final boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // H3.h
    public final Object poll() {
        return null;
    }
}
