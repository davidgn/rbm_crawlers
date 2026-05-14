.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzct;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Ljava/lang/String;

.field public static final zzb:Ljava/lang/String;

.field static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzty;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzty;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final zze:Lcom/google/android/gms/internal/firebase-auth-api/zzty;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdg;-><init>()V

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zza:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzes;-><init>()V

    const-string v0, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zzb:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzfj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzfj;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzeb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzeb;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzgh;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzgl;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzfx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzfx;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzgp;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzty;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzty;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzty;

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzty;

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzty;

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zza()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static zza()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzcz;->zze()V

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzno;->zza()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdg;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcq;->zzi(Lcom/google/android/gms/internal/firebase-auth-api/zzkj;Z)V

    sget v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdr;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzkt;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzkt;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdr;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkt;)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzes;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzes;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcq;->zzi(Lcom/google/android/gms/internal/firebase-auth-api/zzkj;Z)V

    sget v0, Lcom/google/android/gms/internal/firebase-auth-api/zzfc;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzkt;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzkt;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzfc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkt;)V

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzhk;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzeb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzeb;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcq;->zzi(Lcom/google/android/gms/internal/firebase-auth-api/zzkj;Z)V

    sget v0, Lcom/google/android/gms/internal/firebase-auth-api/zzel;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzkt;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzkt;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzel;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkt;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzfj;->zzg(Z)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzfx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzfx;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcq;->zzi(Lcom/google/android/gms/internal/firebase-auth-api/zzkj;Z)V

    sget v0, Lcom/google/android/gms/internal/firebase-auth-api/zzge;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzkt;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzkt;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzge;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkt;)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzgh;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcq;->zzi(Lcom/google/android/gms/internal/firebase-auth-api/zzkj;Z)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzgl;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcq;->zzi(Lcom/google/android/gms/internal/firebase-auth-api/zzkj;Z)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzgp;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcq;->zzi(Lcom/google/android/gms/internal/firebase-auth-api/zzkj;Z)V

    sget v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgw;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzkt;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzkt;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzgw;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkt;)V

    return-void
.end method
