package com.google.firebase.firestore.local;

import android.database.Cursor;
import com.google.firebase.firestore.util.Function;
/* loaded from: classes2.dex */
public final /* synthetic */ class w implements Function {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6424a;

    public /* synthetic */ w(int i) {
        this.f6424a = i;
    }

    @Override // com.google.firebase.firestore.util.Function, E3.c
    public final Object apply(Object obj) {
        Long lambda$getSequenceNumberCount$0;
        Integer lambda$getHighestUnacknowledgedBatchId$5;
        Long lambda$ensureSequenceNumbers$7;
        Cursor cursor = (Cursor) obj;
        switch (this.f6424a) {
            case 0:
                lambda$getSequenceNumberCount$0 = SQLiteLruReferenceDelegate.lambda$getSequenceNumberCount$0(cursor);
                return lambda$getSequenceNumberCount$0;
            case 1:
                lambda$getHighestUnacknowledgedBatchId$5 = SQLiteMutationQueue.lambda$getHighestUnacknowledgedBatchId$5(cursor);
                return lambda$getHighestUnacknowledgedBatchId$5;
            case 2:
                lambda$ensureSequenceNumbers$7 = SQLiteSchema.lambda$ensureSequenceNumbers$7(cursor);
                return lambda$ensureSequenceNumbers$7;
            case 3:
                return SQLitePersistence.a(cursor);
            default:
                return SQLitePersistence.b(cursor);
        }
    }
}
