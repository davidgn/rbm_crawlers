package com.google.firebase.firestore.local;

import android.database.Cursor;
import com.google.firebase.firestore.util.Consumer;
/* loaded from: classes2.dex */
public final /* synthetic */ class A implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6338a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ SQLiteMutationQueue f6339b;

    public /* synthetic */ A(SQLiteMutationQueue sQLiteMutationQueue, int i) {
        this.f6338a = i;
        this.f6339b = sQLiteMutationQueue;
    }

    @Override // com.google.firebase.firestore.util.Consumer
    public final void accept(Object obj) {
        switch (this.f6338a) {
            case 0:
                SQLiteMutationQueue.c(this.f6339b, (Cursor) obj);
                return;
            default:
                SQLiteMutationQueue.f(this.f6339b, (Cursor) obj);
                return;
        }
    }
}
