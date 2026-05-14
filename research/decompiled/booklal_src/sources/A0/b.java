package A0;

import android.database.Cursor;
import android.database.sqlite.SQLiteClosable;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteProgram;
import java.io.Closeable;
import z0.InterfaceC1002c;
/* loaded from: classes.dex */
public class b implements Closeable {

    /* renamed from: c  reason: collision with root package name */
    public static final String[] f4c = new String[0];

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5a;

    /* renamed from: b  reason: collision with root package name */
    public final SQLiteClosable f6b;

    public /* synthetic */ b(SQLiteClosable sQLiteClosable, int i) {
        this.f5a = i;
        this.f6b = sQLiteClosable;
    }

    public void b() {
        ((SQLiteDatabase) this.f6b).beginTransaction();
    }

    public void c(int i, byte[] bArr) {
        ((SQLiteProgram) this.f6b).bindBlob(i, bArr);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        switch (this.f5a) {
            case 0:
                ((SQLiteDatabase) this.f6b).close();
                return;
            default:
                ((SQLiteProgram) this.f6b).close();
                return;
        }
    }

    public void e(int i, long j5) {
        ((SQLiteProgram) this.f6b).bindLong(i, j5);
    }

    public void f(int i) {
        ((SQLiteProgram) this.f6b).bindNull(i);
    }

    public void g(int i, String str) {
        ((SQLiteProgram) this.f6b).bindString(i, str);
    }

    public void m() {
        ((SQLiteDatabase) this.f6b).endTransaction();
    }

    public void n(String str) {
        ((SQLiteDatabase) this.f6b).execSQL(str);
    }

    public Cursor q(String str) {
        return r(new G3.b(str, 3));
    }

    public Cursor r(InterfaceC1002c interfaceC1002c) {
        return ((SQLiteDatabase) this.f6b).rawQueryWithFactory(new a(interfaceC1002c), interfaceC1002c.c(), f4c, null);
    }

    public void s() {
        ((SQLiteDatabase) this.f6b).setTransactionSuccessful();
    }
}
