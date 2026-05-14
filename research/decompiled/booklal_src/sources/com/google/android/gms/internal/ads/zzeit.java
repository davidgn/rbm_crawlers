package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.google.firebase.database.core.ServerValues;
/* loaded from: classes.dex */
public final class zzeit {
    public static void zza(SQLiteDatabase sQLiteDatabase) {
        zzi(sQLiteDatabase, "failed_requests", 0);
        zzi(sQLiteDatabase, "total_requests", 0);
        zzi(sQLiteDatabase, "completed_requests", 0);
        ContentValues contentValues = new ContentValues();
        contentValues.put("statistic_name", "last_successful_request_time");
        contentValues.put("value", (Long) 0L);
        sQLiteDatabase.insert("offline_signal_statistics", null, contentValues);
    }

    public static void zzb(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.delete("offline_signal_contents", null, null);
        zzh(sQLiteDatabase, "failed_requests", 0);
        zzh(sQLiteDatabase, "total_requests", 0);
        zzh(sQLiteDatabase, "completed_requests", 0);
    }

    public static int zzc(SQLiteDatabase sQLiteDatabase, int i) {
        int i4 = 0;
        if (i == 2) {
            return 0;
        }
        Cursor zzg = zzg(sQLiteDatabase, i);
        if (zzg.getCount() > 0) {
            zzg.moveToNext();
            i4 = zzg.getInt(zzg.getColumnIndexOrThrow("value"));
        }
        zzg.close();
        return i4;
    }

    public static long zzd(SQLiteDatabase sQLiteDatabase, int i) {
        long j5;
        Cursor zzg = zzg(sQLiteDatabase, 2);
        if (zzg.getCount() > 0) {
            zzg.moveToNext();
            j5 = zzg.getLong(zzg.getColumnIndexOrThrow("value"));
        } else {
            j5 = 0;
        }
        zzg.close();
        return j5;
    }

    public static void zze(SQLiteDatabase sQLiteDatabase, long j5, byte[] bArr) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(ServerValues.NAME_OP_TIMESTAMP, Long.valueOf(j5));
        contentValues.put("serialized_proto_data", bArr);
        if (sQLiteDatabase.update("offline_signal_contents", contentValues, "timestamp = ?", new String[]{String.valueOf(j5)}) == 0) {
            sQLiteDatabase.insert("offline_signal_contents", null, contentValues);
        }
    }

    public static void zzf(SQLiteDatabase sQLiteDatabase, boolean z4, boolean z5) {
        if (!z5) {
            sQLiteDatabase.execSQL("UPDATE offline_signal_statistics SET value = value+1 WHERE statistic_name = 'total_requests'");
            return;
        }
        sQLiteDatabase.execSQL("UPDATE offline_signal_statistics SET value = value+1 WHERE statistic_name = 'completed_requests'");
        if (z4) {
            return;
        }
        sQLiteDatabase.execSQL("UPDATE offline_signal_statistics SET value = value+1 WHERE statistic_name = 'failed_requests'");
    }

    private static Cursor zzg(SQLiteDatabase sQLiteDatabase, int i) {
        String[] strArr = {"value"};
        String[] strArr2 = new String[1];
        if (i == 0) {
            strArr2[0] = "failed_requests";
        } else if (i == 1) {
            strArr2[0] = "total_requests";
        } else if (i != 2) {
            strArr2[0] = "completed_requests";
        } else {
            strArr2[0] = "last_successful_request_time";
        }
        return sQLiteDatabase.query("offline_signal_statistics", strArr, "statistic_name = ?", strArr2, null, null, null);
    }

    private static void zzh(SQLiteDatabase sQLiteDatabase, String str, int i) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("value", (Integer) 0);
        sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = ?", new String[]{str});
    }

    private static void zzi(SQLiteDatabase sQLiteDatabase, String str, int i) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("statistic_name", str);
        contentValues.put("value", (Integer) 0);
        sQLiteDatabase.insert("offline_signal_statistics", null, contentValues);
    }
}
