package A0;

import android.database.sqlite.SQLiteStatement;
/* loaded from: classes.dex */
public final class f extends b {

    /* renamed from: d  reason: collision with root package name */
    public final SQLiteStatement f19d;

    public f(SQLiteStatement sQLiteStatement) {
        super(sQLiteStatement, 1);
        this.f19d = sQLiteStatement;
    }

    public final void t() {
        this.f19d.executeUpdateDelete();
    }
}
