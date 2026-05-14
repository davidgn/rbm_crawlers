package A4;

import com.google.android.gms.fido.fido2.api.common.UserVerificationMethods;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
/* loaded from: classes2.dex */
public final class m {

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f133b = AtomicReferenceFieldUpdater.newUpdater(m.class, Object.class, "lastScheduledTask$volatile");

    /* renamed from: c  reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f134c = AtomicIntegerFieldUpdater.newUpdater(m.class, "producerIndex$volatile");

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f135d = AtomicIntegerFieldUpdater.newUpdater(m.class, "consumerIndex$volatile");

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f136e = AtomicIntegerFieldUpdater.newUpdater(m.class, "blockingTasksInBuffer$volatile");

    /* renamed from: a  reason: collision with root package name */
    public final AtomicReferenceArray f137a = new AtomicReferenceArray((int) UserVerificationMethods.USER_VERIFY_PATTERN);
    private volatile /* synthetic */ int blockingTasksInBuffer$volatile;
    private volatile /* synthetic */ int consumerIndex$volatile;
    private volatile /* synthetic */ Object lastScheduledTask$volatile;
    private volatile /* synthetic */ int producerIndex$volatile;

    public final i a(i iVar) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f134c;
        if (atomicIntegerFieldUpdater.get(this) - f135d.get(this) == 127) {
            return iVar;
        }
        if (iVar.f122b.f4769a == 1) {
            f136e.incrementAndGet(this);
        }
        int i = atomicIntegerFieldUpdater.get(this) & 127;
        while (true) {
            AtomicReferenceArray atomicReferenceArray = this.f137a;
            if (atomicReferenceArray.get(i) == null) {
                atomicReferenceArray.lazySet(i, iVar);
                atomicIntegerFieldUpdater.incrementAndGet(this);
                return null;
            }
            Thread.yield();
        }
    }

    public final i b() {
        i iVar;
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f135d;
            int i = atomicIntegerFieldUpdater.get(this);
            if (i - f134c.get(this) == 0) {
                return null;
            }
            int i4 = i & 127;
            if (atomicIntegerFieldUpdater.compareAndSet(this, i, i + 1) && (iVar = (i) this.f137a.getAndSet(i4, null)) != null) {
                if (iVar.f122b.f4769a == 1) {
                    f136e.decrementAndGet(this);
                }
                return iVar;
            }
        }
    }

    public final i c(int i, boolean z4) {
        int i4 = i & 127;
        AtomicReferenceArray atomicReferenceArray = this.f137a;
        i iVar = (i) atomicReferenceArray.get(i4);
        if (iVar != null) {
            if ((iVar.f122b.f4769a == 1) == z4) {
                while (!atomicReferenceArray.compareAndSet(i4, iVar, null)) {
                    if (atomicReferenceArray.get(i4) != iVar) {
                    }
                }
                if (z4) {
                    f136e.decrementAndGet(this);
                }
                return iVar;
            }
        }
        return null;
    }
}
