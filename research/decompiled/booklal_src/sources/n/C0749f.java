package n;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: n.f  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0749f implements Iterable {

    /* renamed from: a  reason: collision with root package name */
    public C0746c f9578a;

    /* renamed from: b  reason: collision with root package name */
    public C0746c f9579b;

    /* renamed from: c  reason: collision with root package name */
    public final WeakHashMap f9580c = new WeakHashMap();

    /* renamed from: d  reason: collision with root package name */
    public int f9581d = 0;

    public C0746c a(Object obj) {
        C0746c c0746c = this.f9578a;
        while (c0746c != null && !c0746c.f9571a.equals(obj)) {
            c0746c = c0746c.f9573c;
        }
        return c0746c;
    }

    public Object d(Object obj) {
        C0746c a5 = a(obj);
        if (a5 == null) {
            return null;
        }
        this.f9581d--;
        WeakHashMap weakHashMap = this.f9580c;
        if (!weakHashMap.isEmpty()) {
            for (AbstractC0748e abstractC0748e : weakHashMap.keySet()) {
                abstractC0748e.a(a5);
            }
        }
        C0746c c0746c = a5.f9574d;
        if (c0746c != null) {
            c0746c.f9573c = a5.f9573c;
        } else {
            this.f9578a = a5.f9573c;
        }
        C0746c c0746c2 = a5.f9573c;
        if (c0746c2 != null) {
            c0746c2.f9574d = c0746c;
        } else {
            this.f9579b = c0746c;
        }
        a5.f9573c = null;
        a5.f9574d = null;
        return a5.f9572b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0048, code lost:
        if (r3.hasNext() != false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0050, code lost:
        if (((n.C0745b) r7).hasNext() != false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0054, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:?, code lost:
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r7) {
        /*
            r6 = this;
            r0 = 1
            if (r7 != r6) goto L4
            return r0
        L4:
            boolean r1 = r7 instanceof n.C0749f
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            n.f r7 = (n.C0749f) r7
            int r1 = r6.f9581d
            int r3 = r7.f9581d
            if (r1 == r3) goto L13
            return r2
        L13:
            java.util.Iterator r1 = r6.iterator()
            java.util.Iterator r7 = r7.iterator()
        L1b:
            r3 = r1
            n.b r3 = (n.C0745b) r3
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L44
            r4 = r7
            n.b r4 = (n.C0745b) r4
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L44
            java.lang.Object r3 = r3.next()
            java.util.Map$Entry r3 = (java.util.Map.Entry) r3
            java.lang.Object r4 = r4.next()
            if (r3 != 0) goto L3b
            if (r4 != 0) goto L43
        L3b:
            if (r3 == 0) goto L1b
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L1b
        L43:
            return r2
        L44:
            boolean r1 = r3.hasNext()
            if (r1 != 0) goto L53
            n.b r7 = (n.C0745b) r7
            boolean r7 = r7.hasNext()
            if (r7 != 0) goto L53
            goto L54
        L53:
            r0 = r2
        L54:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: n.C0749f.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        Iterator it = iterator();
        int i = 0;
        while (true) {
            C0745b c0745b = (C0745b) it;
            if (!c0745b.hasNext()) {
                return i;
            }
            i += ((Map.Entry) c0745b.next()).hashCode();
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        C0745b c0745b = new C0745b(this.f9578a, this.f9579b, 0);
        this.f9580c.put(c0745b, Boolean.FALSE);
        return c0745b;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        Iterator it = iterator();
        while (true) {
            C0745b c0745b = (C0745b) it;
            if (!c0745b.hasNext()) {
                sb.append("]");
                return sb.toString();
            }
            sb.append(((Map.Entry) c0745b.next()).toString());
            if (c0745b.hasNext()) {
                sb.append(", ");
            }
        }
    }
}
