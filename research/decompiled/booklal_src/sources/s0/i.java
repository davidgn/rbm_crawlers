package s0;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Objects;
/* loaded from: classes.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public final int f10093a;

    /* renamed from: b  reason: collision with root package name */
    public final int f10094b;

    /* renamed from: c  reason: collision with root package name */
    public final long f10095c;

    /* renamed from: d  reason: collision with root package name */
    public final long f10096d;

    public i(int i, int i4, long j5, long j6) {
        this.f10093a = i;
        this.f10094b = i4;
        this.f10095c = j5;
        this.f10096d = j6;
    }

    public static i a(File file) {
        DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
        try {
            i iVar = new i(dataInputStream.readInt(), dataInputStream.readInt(), dataInputStream.readLong(), dataInputStream.readLong());
            dataInputStream.close();
            return iVar;
        } catch (Throwable th) {
            try {
                dataInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final void b(File file) {
        file.delete();
        DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(file));
        try {
            dataOutputStream.writeInt(this.f10093a);
            dataOutputStream.writeInt(this.f10094b);
            dataOutputStream.writeLong(this.f10095c);
            dataOutputStream.writeLong(this.f10096d);
            dataOutputStream.close();
        } catch (Throwable th) {
            try {
                dataOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return this.f10094b == iVar.f10094b && this.f10095c == iVar.f10095c && this.f10093a == iVar.f10093a && this.f10096d == iVar.f10096d;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f10094b), Long.valueOf(this.f10095c), Integer.valueOf(this.f10093a), Long.valueOf(this.f10096d));
    }
}
