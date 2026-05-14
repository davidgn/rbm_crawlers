package com.google.firebase.firestore.local;

import android.database.Cursor;
import com.google.firebase.firestore.util.Consumer;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final /* synthetic */ class t implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6415a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ArrayList f6416b;

    public /* synthetic */ t(ArrayList arrayList, int i) {
        this.f6415a = i;
        this.f6416b = arrayList;
    }

    @Override // com.google.firebase.firestore.util.Consumer
    public final void accept(Object obj) {
        switch (this.f6415a) {
            case 0:
                SQLiteIndexManager.lambda$getCollectionParents$3(this.f6416b, (Cursor) obj);
                return;
            case 1:
                SQLiteIndexManager.lambda$getDocumentsMatchingTarget$7(this.f6416b, (Cursor) obj);
                return;
            case 2:
                SQLiteMutationQueue.lambda$performConsistencyCheck$11(this.f6416b, (Cursor) obj);
                return;
            default:
                SQLiteMutationQueue.lambda$loadNextBatchIdAcrossAllUsers$1(this.f6416b, (Cursor) obj);
                return;
        }
    }
}
