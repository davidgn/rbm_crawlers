package H2;

import androidx.annotation.RecentlyNonNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final f f1070a;

    /* renamed from: b  reason: collision with root package name */
    public static final f f1071b;

    /* renamed from: c  reason: collision with root package name */
    public static final f f1072c;

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ f[] f1073d;

    /* JADX WARN: Type inference failed for: r0v0, types: [H2.f, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [H2.f, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r2v2, types: [H2.f, java.lang.Enum] */
    static {
        ?? r02 = new Enum("UNKNOWN", 0);
        f1070a = r02;
        ?? r12 = new Enum("NOT_REQUIRED", 1);
        f1071b = r12;
        ?? r22 = new Enum("REQUIRED", 2);
        f1072c = r22;
        f1073d = new f[]{r02, r12, r22};
    }

    @RecentlyNonNull
    public static f valueOf(@RecentlyNonNull String str) {
        return (f) Enum.valueOf(f.class, str);
    }

    @RecentlyNonNull
    public static f[] values() {
        return (f[]) f1073d.clone();
    }
}
