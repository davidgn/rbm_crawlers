package j3;

import java.util.Comparator;
/* loaded from: classes2.dex */
public final class Y implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return ((X) obj).c() - ((X) obj2).c();
    }
}
