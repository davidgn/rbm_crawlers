package com.google.firebase.firestore.local;

import com.google.firebase.firestore.local.IndexBackfiller;
import com.google.firebase.firestore.local.LruGarbageCollector;
/* renamed from: com.google.firebase.firestore.local.c  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class RunnableC0313c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6363a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f6364b;

    public /* synthetic */ RunnableC0313c(Object obj, int i) {
        this.f6363a = i;
        this.f6364b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6363a) {
            case 0:
                IndexBackfiller.Scheduler.a((IndexBackfiller.Scheduler) this.f6364b);
                return;
            case 1:
                LruGarbageCollector.GCScheduler.a((LruGarbageCollector.GCScheduler) this.f6364b);
                return;
            default:
                SQLiteOverlayMigrationManager.a((SQLiteOverlayMigrationManager) this.f6364b);
                return;
        }
    }
}
