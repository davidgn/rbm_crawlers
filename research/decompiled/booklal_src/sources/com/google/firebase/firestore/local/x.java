package com.google.firebase.firestore.local;

import android.database.Cursor;
import com.google.firebase.firestore.util.Consumer;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final /* synthetic */ class x implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6425a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ SQLiteMutationQueue f6426b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ ArrayList f6427c;

    public /* synthetic */ x(SQLiteMutationQueue sQLiteMutationQueue, ArrayList arrayList, int i) {
        this.f6425a = i;
        this.f6426b = sQLiteMutationQueue;
        this.f6427c = arrayList;
    }

    @Override // com.google.firebase.firestore.util.Consumer
    public final void accept(Object obj) {
        switch (this.f6425a) {
            case 0:
                this.f6426b.lambda$getAllMutationBatchesAffectingDocumentKey$7(this.f6427c, (Cursor) obj);
                return;
            default:
                this.f6426b.lambda$getAllMutationBatches$6(this.f6427c, (Cursor) obj);
                return;
        }
    }
}
