package com.google.android.gms.common.internal.safeparcel;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.util.SparseLongArray;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;
/* loaded from: classes.dex */
public class SafeParcelWriter {
    private SafeParcelWriter() {
    }

    public static int beginObjectHeader(Parcel parcel) {
        return zzb(parcel, 20293);
    }

    public static void finishObjectHeader(Parcel parcel, int i) {
        zzc(parcel, i);
    }

    public static void writeBigDecimal(Parcel parcel, int i, BigDecimal bigDecimal, boolean z4) {
        if (bigDecimal == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeByteArray(bigDecimal.unscaledValue().toByteArray());
        parcel.writeInt(bigDecimal.scale());
        zzc(parcel, zzb);
    }

    public static void writeBigDecimalArray(Parcel parcel, int i, BigDecimal[] bigDecimalArr, boolean z4) {
        if (bigDecimalArr == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        int length = bigDecimalArr.length;
        parcel.writeInt(length);
        for (int i4 = 0; i4 < length; i4++) {
            parcel.writeByteArray(bigDecimalArr[i4].unscaledValue().toByteArray());
            parcel.writeInt(bigDecimalArr[i4].scale());
        }
        zzc(parcel, zzb);
    }

    public static void writeBigInteger(Parcel parcel, int i, BigInteger bigInteger, boolean z4) {
        if (bigInteger == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeByteArray(bigInteger.toByteArray());
        zzc(parcel, zzb);
    }

    public static void writeBigIntegerArray(Parcel parcel, int i, BigInteger[] bigIntegerArr, boolean z4) {
        if (bigIntegerArr == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeInt(bigIntegerArr.length);
        for (BigInteger bigInteger : bigIntegerArr) {
            parcel.writeByteArray(bigInteger.toByteArray());
        }
        zzc(parcel, zzb);
    }

    public static void writeBoolean(Parcel parcel, int i, boolean z4) {
        zza(parcel, i, 4);
        parcel.writeInt(z4 ? 1 : 0);
    }

    public static void writeBooleanArray(Parcel parcel, int i, boolean[] zArr, boolean z4) {
        if (zArr == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeBooleanArray(zArr);
        zzc(parcel, zzb);
    }

    public static void writeBooleanList(Parcel parcel, int i, List<Boolean> list, boolean z4) {
        if (list == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i4 = 0; i4 < size; i4++) {
            parcel.writeInt(list.get(i4).booleanValue() ? 1 : 0);
        }
        zzc(parcel, zzb);
    }

    public static void writeBooleanObject(Parcel parcel, int i, Boolean bool, boolean z4) {
        if (bool != null) {
            zza(parcel, i, 4);
            parcel.writeInt(bool.booleanValue() ? 1 : 0);
        } else if (z4) {
            zza(parcel, i, 0);
        }
    }

    public static void writeBundle(Parcel parcel, int i, Bundle bundle, boolean z4) {
        if (bundle == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeBundle(bundle);
        zzc(parcel, zzb);
    }

    public static void writeByte(Parcel parcel, int i, byte b5) {
        zza(parcel, i, 4);
        parcel.writeInt(b5);
    }

    public static void writeByteArray(Parcel parcel, int i, byte[] bArr, boolean z4) {
        if (bArr == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeByteArray(bArr);
        zzc(parcel, zzb);
    }

    public static void writeByteArrayArray(Parcel parcel, int i, byte[][] bArr, boolean z4) {
        if (bArr == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeInt(bArr.length);
        for (byte[] bArr2 : bArr) {
            parcel.writeByteArray(bArr2);
        }
        zzc(parcel, zzb);
    }

    public static void writeByteArraySparseArray(Parcel parcel, int i, SparseArray<byte[]> sparseArray, boolean z4) {
        if (sparseArray == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i4 = 0; i4 < size; i4++) {
            parcel.writeInt(sparseArray.keyAt(i4));
            parcel.writeByteArray(sparseArray.valueAt(i4));
        }
        zzc(parcel, zzb);
    }

    public static void writeChar(Parcel parcel, int i, char c5) {
        zza(parcel, i, 4);
        parcel.writeInt(c5);
    }

    public static void writeCharArray(Parcel parcel, int i, char[] cArr, boolean z4) {
        if (cArr == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeCharArray(cArr);
        zzc(parcel, zzb);
    }

    public static void writeDouble(Parcel parcel, int i, double d2) {
        zza(parcel, i, 8);
        parcel.writeDouble(d2);
    }

    public static void writeDoubleArray(Parcel parcel, int i, double[] dArr, boolean z4) {
        if (dArr == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeDoubleArray(dArr);
        zzc(parcel, zzb);
    }

    public static void writeDoubleList(Parcel parcel, int i, List<Double> list, boolean z4) {
        if (list == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i4 = 0; i4 < size; i4++) {
            parcel.writeDouble(list.get(i4).doubleValue());
        }
        zzc(parcel, zzb);
    }

    public static void writeDoubleObject(Parcel parcel, int i, Double d2, boolean z4) {
        if (d2 != null) {
            zza(parcel, i, 8);
            parcel.writeDouble(d2.doubleValue());
        } else if (z4) {
            zza(parcel, i, 0);
        }
    }

    public static void writeDoubleSparseArray(Parcel parcel, int i, SparseArray<Double> sparseArray, boolean z4) {
        if (sparseArray == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i4 = 0; i4 < size; i4++) {
            parcel.writeInt(sparseArray.keyAt(i4));
            parcel.writeDouble(sparseArray.valueAt(i4).doubleValue());
        }
        zzc(parcel, zzb);
    }

    public static void writeFloat(Parcel parcel, int i, float f5) {
        zza(parcel, i, 4);
        parcel.writeFloat(f5);
    }

    public static void writeFloatArray(Parcel parcel, int i, float[] fArr, boolean z4) {
        if (fArr == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeFloatArray(fArr);
        zzc(parcel, zzb);
    }

    public static void writeFloatList(Parcel parcel, int i, List<Float> list, boolean z4) {
        if (list == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i4 = 0; i4 < size; i4++) {
            parcel.writeFloat(list.get(i4).floatValue());
        }
        zzc(parcel, zzb);
    }

    public static void writeFloatObject(Parcel parcel, int i, Float f5, boolean z4) {
        if (f5 != null) {
            zza(parcel, i, 4);
            parcel.writeFloat(f5.floatValue());
        } else if (z4) {
            zza(parcel, i, 0);
        }
    }

    public static void writeFloatSparseArray(Parcel parcel, int i, SparseArray<Float> sparseArray, boolean z4) {
        if (sparseArray == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i4 = 0; i4 < size; i4++) {
            parcel.writeInt(sparseArray.keyAt(i4));
            parcel.writeFloat(sparseArray.valueAt(i4).floatValue());
        }
        zzc(parcel, zzb);
    }

    public static void writeIBinder(Parcel parcel, int i, IBinder iBinder, boolean z4) {
        if (iBinder == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeStrongBinder(iBinder);
        zzc(parcel, zzb);
    }

    public static void writeIBinderArray(Parcel parcel, int i, IBinder[] iBinderArr, boolean z4) {
        if (iBinderArr == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeBinderArray(iBinderArr);
        zzc(parcel, zzb);
    }

    public static void writeIBinderList(Parcel parcel, int i, List<IBinder> list, boolean z4) {
        if (list == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeBinderList(list);
        zzc(parcel, zzb);
    }

    public static void writeIBinderSparseArray(Parcel parcel, int i, SparseArray<IBinder> sparseArray, boolean z4) {
        if (sparseArray == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i4 = 0; i4 < size; i4++) {
            parcel.writeInt(sparseArray.keyAt(i4));
            parcel.writeStrongBinder(sparseArray.valueAt(i4));
        }
        zzc(parcel, zzb);
    }

    public static void writeInt(Parcel parcel, int i, int i4) {
        zza(parcel, i, 4);
        parcel.writeInt(i4);
    }

    public static void writeIntArray(Parcel parcel, int i, int[] iArr, boolean z4) {
        if (iArr == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeIntArray(iArr);
        zzc(parcel, zzb);
    }

    public static void writeIntegerList(Parcel parcel, int i, List<Integer> list, boolean z4) {
        if (list == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i4 = 0; i4 < size; i4++) {
            parcel.writeInt(list.get(i4).intValue());
        }
        zzc(parcel, zzb);
    }

    public static void writeIntegerObject(Parcel parcel, int i, Integer num, boolean z4) {
        if (num != null) {
            zza(parcel, i, 4);
            parcel.writeInt(num.intValue());
        } else if (z4) {
            zza(parcel, i, 0);
        }
    }

    public static void writeList(Parcel parcel, int i, List list, boolean z4) {
        if (list == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeList(list);
        zzc(parcel, zzb);
    }

    public static void writeLong(Parcel parcel, int i, long j5) {
        zza(parcel, i, 8);
        parcel.writeLong(j5);
    }

    public static void writeLongArray(Parcel parcel, int i, long[] jArr, boolean z4) {
        if (jArr == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeLongArray(jArr);
        zzc(parcel, zzb);
    }

    public static void writeLongList(Parcel parcel, int i, List<Long> list, boolean z4) {
        if (list == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i4 = 0; i4 < size; i4++) {
            parcel.writeLong(list.get(i4).longValue());
        }
        zzc(parcel, zzb);
    }

    public static void writeLongObject(Parcel parcel, int i, Long l5, boolean z4) {
        if (l5 != null) {
            zza(parcel, i, 8);
            parcel.writeLong(l5.longValue());
        } else if (z4) {
            zza(parcel, i, 0);
        }
    }

    public static void writeParcel(Parcel parcel, int i, Parcel parcel2, boolean z4) {
        if (parcel2 == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.appendFrom(parcel2, 0, parcel2.dataSize());
        zzc(parcel, zzb);
    }

    public static void writeParcelArray(Parcel parcel, int i, Parcel[] parcelArr, boolean z4) {
        if (parcelArr == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeInt(parcelArr.length);
        for (Parcel parcel2 : parcelArr) {
            if (parcel2 != null) {
                parcel.writeInt(parcel2.dataSize());
                parcel.appendFrom(parcel2, 0, parcel2.dataSize());
            } else {
                parcel.writeInt(0);
            }
        }
        zzc(parcel, zzb);
    }

    public static void writeParcelList(Parcel parcel, int i, List<Parcel> list, boolean z4) {
        if (list == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i4 = 0; i4 < size; i4++) {
            Parcel parcel2 = list.get(i4);
            if (parcel2 != null) {
                parcel.writeInt(parcel2.dataSize());
                parcel.appendFrom(parcel2, 0, parcel2.dataSize());
            } else {
                parcel.writeInt(0);
            }
        }
        zzc(parcel, zzb);
    }

    public static void writeParcelSparseArray(Parcel parcel, int i, SparseArray<Parcel> sparseArray, boolean z4) {
        if (sparseArray == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i4 = 0; i4 < size; i4++) {
            parcel.writeInt(sparseArray.keyAt(i4));
            Parcel valueAt = sparseArray.valueAt(i4);
            if (valueAt != null) {
                parcel.writeInt(valueAt.dataSize());
                parcel.appendFrom(valueAt, 0, valueAt.dataSize());
            } else {
                parcel.writeInt(0);
            }
        }
        zzc(parcel, zzb);
    }

    public static void writeParcelable(Parcel parcel, int i, Parcelable parcelable, int i4, boolean z4) {
        if (parcelable == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        parcelable.writeToParcel(parcel, i4);
        zzc(parcel, zzb);
    }

    public static void writePendingIntent(Parcel parcel, int i, PendingIntent pendingIntent, boolean z4) {
        if (pendingIntent == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        PendingIntent.writePendingIntentOrNullToParcel(pendingIntent, parcel);
        zzc(parcel, zzb);
    }

    public static void writeShort(Parcel parcel, int i, short s5) {
        zza(parcel, i, 4);
        parcel.writeInt(s5);
    }

    public static void writeSparseBooleanArray(Parcel parcel, int i, SparseBooleanArray sparseBooleanArray, boolean z4) {
        if (sparseBooleanArray == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeSparseBooleanArray(sparseBooleanArray);
        zzc(parcel, zzb);
    }

    public static void writeSparseIntArray(Parcel parcel, int i, SparseIntArray sparseIntArray, boolean z4) {
        if (sparseIntArray == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        int size = sparseIntArray.size();
        parcel.writeInt(size);
        for (int i4 = 0; i4 < size; i4++) {
            parcel.writeInt(sparseIntArray.keyAt(i4));
            parcel.writeInt(sparseIntArray.valueAt(i4));
        }
        zzc(parcel, zzb);
    }

    public static void writeSparseLongArray(Parcel parcel, int i, SparseLongArray sparseLongArray, boolean z4) {
        if (sparseLongArray == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        int size = sparseLongArray.size();
        parcel.writeInt(size);
        for (int i4 = 0; i4 < size; i4++) {
            parcel.writeInt(sparseLongArray.keyAt(i4));
            parcel.writeLong(sparseLongArray.valueAt(i4));
        }
        zzc(parcel, zzb);
    }

    public static void writeString(Parcel parcel, int i, String str, boolean z4) {
        if (str == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeString(str);
        zzc(parcel, zzb);
    }

    public static void writeStringArray(Parcel parcel, int i, String[] strArr, boolean z4) {
        if (strArr == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeStringArray(strArr);
        zzc(parcel, zzb);
    }

    public static void writeStringList(Parcel parcel, int i, List<String> list, boolean z4) {
        if (list == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeStringList(list);
        zzc(parcel, zzb);
    }

    public static void writeStringSparseArray(Parcel parcel, int i, SparseArray<String> sparseArray, boolean z4) {
        if (sparseArray == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i4 = 0; i4 < size; i4++) {
            parcel.writeInt(sparseArray.keyAt(i4));
            parcel.writeString(sparseArray.valueAt(i4));
        }
        zzc(parcel, zzb);
    }

    public static <T extends Parcelable> void writeTypedArray(Parcel parcel, int i, T[] tArr, int i4, boolean z4) {
        if (tArr == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        parcel.writeInt(tArr.length);
        for (T t2 : tArr) {
            if (t2 == null) {
                parcel.writeInt(0);
            } else {
                zzd(parcel, t2, i4);
            }
        }
        zzc(parcel, zzb);
    }

    public static <T extends Parcelable> void writeTypedList(Parcel parcel, int i, List<T> list, boolean z4) {
        if (list == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i4 = 0; i4 < size; i4++) {
            T t2 = list.get(i4);
            if (t2 == null) {
                parcel.writeInt(0);
            } else {
                zzd(parcel, t2, 0);
            }
        }
        zzc(parcel, zzb);
    }

    public static <T extends Parcelable> void writeTypedSparseArray(Parcel parcel, int i, SparseArray<T> sparseArray, boolean z4) {
        if (sparseArray == null) {
            if (z4) {
                zza(parcel, i, 0);
                return;
            }
            return;
        }
        int zzb = zzb(parcel, i);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i4 = 0; i4 < size; i4++) {
            parcel.writeInt(sparseArray.keyAt(i4));
            T valueAt = sparseArray.valueAt(i4);
            if (valueAt == null) {
                parcel.writeInt(0);
            } else {
                zzd(parcel, valueAt, 0);
            }
        }
        zzc(parcel, zzb);
    }

    private static void zza(Parcel parcel, int i, int i4) {
        parcel.writeInt(i | (i4 << 16));
    }

    private static int zzb(Parcel parcel, int i) {
        parcel.writeInt(i | (-65536));
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    private static void zzc(Parcel parcel, int i) {
        int dataPosition = parcel.dataPosition();
        parcel.setDataPosition(i - 4);
        parcel.writeInt(dataPosition - i);
        parcel.setDataPosition(dataPosition);
    }

    private static void zzd(Parcel parcel, Parcelable parcelable, int i) {
        int dataPosition = parcel.dataPosition();
        parcel.writeInt(1);
        int dataPosition2 = parcel.dataPosition();
        parcelable.writeToParcel(parcel, i);
        int dataPosition3 = parcel.dataPosition();
        parcel.setDataPosition(dataPosition);
        parcel.writeInt(dataPosition3 - dataPosition2);
        parcel.setDataPosition(dataPosition3);
    }
}
