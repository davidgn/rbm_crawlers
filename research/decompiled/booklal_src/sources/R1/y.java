package R1;

import android.util.SparseArray;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    public static final y f2481a;

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ y[] f2482b;

    /* JADX WARN: Type inference failed for: r10v0, types: [java.lang.Enum, java.lang.Object, R1.y] */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.lang.Enum, java.lang.Object, R1.y] */
    /* JADX WARN: Type inference failed for: r14v0, types: [java.lang.Enum, java.lang.Object, R1.y] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.Enum, java.lang.Object, R1.y] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.Enum, java.lang.Object, R1.y] */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.lang.Enum, java.lang.Object, R1.y] */
    static {
        ?? r6 = new Enum("DEFAULT", 0);
        f2481a = r6;
        ?? r8 = new Enum("UNMETERED_ONLY", 1);
        ?? r10 = new Enum("UNMETERED_OR_DAILY", 2);
        ?? r12 = new Enum("FAST_IF_RADIO_AWAKE", 3);
        ?? r14 = new Enum("NEVER", 4);
        ?? r5 = new Enum("UNRECOGNIZED", 5);
        f2482b = new y[]{r6, r8, r10, r12, r14, r5};
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, r6);
        sparseArray.put(1, r8);
        sparseArray.put(2, r10);
        sparseArray.put(3, r12);
        sparseArray.put(4, r14);
        sparseArray.put(-1, r5);
    }

    public static y valueOf(String str) {
        return (y) Enum.valueOf(y.class, str);
    }

    public static y[] values() {
        return (y[]) f2482b.clone();
    }
}
