package com.google.android.gms.auth.account;

import android.accounts.Account;
import android.os.Parcel;
/* loaded from: classes.dex */
public abstract class zza extends com.google.android.gms.internal.auth.zzb implements zzb {
    public zza() {
        super("com.google.android.gms.auth.account.IWorkAccountCallback");
    }

    @Override // com.google.android.gms.internal.auth.zzb
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i4) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            int i5 = com.google.android.gms.internal.auth.zzc.zza;
            int readInt = parcel.readInt();
            com.google.android.gms.internal.auth.zzc.zzb(parcel);
            zzc(readInt != 0);
        } else {
            com.google.android.gms.internal.auth.zzc.zzb(parcel);
            zzb((Account) com.google.android.gms.internal.auth.zzc.zza(parcel, Account.CREATOR));
        }
        return true;
    }
}
