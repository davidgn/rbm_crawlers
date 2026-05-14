package L0;

import android.content.Context;
import androidx.work.n;
import java.io.File;
import java.util.HashMap;
/* loaded from: classes.dex */
public abstract class k {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1653a = n.e("WrkDbPathHelper");

    /* renamed from: b  reason: collision with root package name */
    public static final String[] f1654b = {"-journal", "-shm", "-wal"};

    public static void a(Context context) {
        File databasePath;
        File file;
        String[] strArr;
        if (context.getDatabasePath("androidx.work.workdb").exists()) {
            String str = f1653a;
            n.c().a(str, "Migrating WorkDatabase to the no-backup directory", new Throwable[0]);
            HashMap hashMap = new HashMap();
            hashMap.put(context.getDatabasePath("androidx.work.workdb"), new File(context.getNoBackupFilesDir(), "androidx.work.workdb"));
            for (String str2 : f1654b) {
                hashMap.put(new File(databasePath.getPath() + str2), new File(file.getPath() + str2));
            }
            for (File file2 : hashMap.keySet()) {
                File file3 = (File) hashMap.get(file2);
                if (file2.exists() && file3 != null) {
                    if (file3.exists()) {
                        n.c().f(str, String.format("Over-writing contents of %s", file3), new Throwable[0]);
                    }
                    n.c().a(str, file2.renameTo(file3) ? String.format("Migrated %s to %s", file2, file3) : String.format("Renaming %s to %s failed", file2, file3), new Throwable[0]);
                }
            }
        }
    }
}
