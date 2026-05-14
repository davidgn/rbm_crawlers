package r0;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import kotlin.jvm.internal.i;
/* renamed from: r0.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0796b {

    /* renamed from: a  reason: collision with root package name */
    public final AbstractCollection f9949a;

    public C0796b(List topics) {
        i.f(topics, "topics");
        this.f9949a = (AbstractCollection) topics;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.AbstractCollection, java.util.List, java.util.Collection] */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.util.AbstractCollection, java.util.List] */
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C0796b) {
            ?? r02 = this.f9949a;
            C0796b c0796b = (C0796b) obj;
            if (r02.size() != c0796b.f9949a.size()) {
                return false;
            }
            return new HashSet((Collection) r02).equals(new HashSet(c0796b.f9949a));
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f9949a);
    }

    public final String toString() {
        return "Topics=" + this.f9949a;
    }
}
