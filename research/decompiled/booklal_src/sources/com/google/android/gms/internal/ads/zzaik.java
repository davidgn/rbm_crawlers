package com.google.android.gms.internal.ads;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
/* loaded from: classes.dex */
public final class zzaik {
    private final ByteArrayOutputStream zza;
    private final DataOutputStream zzb;

    public zzaik() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        this.zza = byteArrayOutputStream;
        this.zzb = new DataOutputStream(byteArrayOutputStream);
    }

    private static void zzb(DataOutputStream dataOutputStream, String str) {
        dataOutputStream.writeBytes(str);
        dataOutputStream.writeByte(0);
    }

    public final byte[] zza(zzaij zzaijVar) {
        ByteArrayOutputStream byteArrayOutputStream = this.zza;
        byteArrayOutputStream.reset();
        try {
            DataOutputStream dataOutputStream = this.zzb;
            zzb(dataOutputStream, zzaijVar.zza);
            zzb(dataOutputStream, zzaijVar.zzb);
            dataOutputStream.writeLong(zzaijVar.zzc);
            dataOutputStream.writeLong(zzaijVar.zzd);
            dataOutputStream.write(zzaijVar.zze);
            dataOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e5) {
            throw new RuntimeException(e5);
        }
    }
}
