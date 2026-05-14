package com.google.firebase.firestore.local;

import android.database.Cursor;
import com.google.firebase.firestore.local.SQLiteTargetCache;
import com.google.firebase.firestore.util.Consumer;
import java.util.HashMap;
import java.util.HashSet;
/* loaded from: classes2.dex */
public final /* synthetic */ class n implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6395a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f6396b;

    public /* synthetic */ n(Object obj, int i) {
        this.f6395a = i;
        this.f6396b = obj;
    }

    @Override // com.google.firebase.firestore.util.Consumer
    public final void accept(Object obj) {
        switch (this.f6395a) {
            case 0:
                MemoryLruReferenceDelegate.a((long[]) this.f6396b, (Long) obj);
                return;
            case 1:
                SQLiteIndexManager.b((HashMap) this.f6396b, (Cursor) obj);
                return;
            case 2:
                SQLiteLruReferenceDelegate.b((Consumer) this.f6396b, (Cursor) obj);
                return;
            case 3:
                SQLiteTargetCache.a((SQLiteTargetCache.DocumentKeysHolder) this.f6396b, (Cursor) obj);
                return;
            case 4:
                SQLiteTargetCache.c((SQLiteTargetCache) this.f6396b, (Cursor) obj);
                return;
            case 5:
                SQLiteOverlayMigrationManager.lambda$hasPendingOverlayMigration$2((Boolean[]) this.f6396b, (Cursor) obj);
                return;
            default:
                SQLiteOverlayMigrationManager.lambda$getAllUserIds$1((HashSet) this.f6396b, (Cursor) obj);
                return;
        }
    }
}
