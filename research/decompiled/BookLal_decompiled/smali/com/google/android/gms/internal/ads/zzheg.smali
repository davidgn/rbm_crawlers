.class public final Lcom/google/android/gms/internal/ads/zzheg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhmj;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzhcp;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzhln;

.field private static final zze:Lcom/google/android/gms/internal/ads/zzhkq;

.field private static final zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhef;->zza:Lcom/google/android/gms/internal/ads/zzhef;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhec;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhch;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhmj;->zzd(Lcom/google/android/gms/internal/ads/zzhmi;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhmj;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzheg;->zzb:Lcom/google/android/gms/internal/ads/zzhmj;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhrq;->zzb:Lcom/google/android/gms/internal/ads/zzhrq;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhpr;->zzg()Lcom/google/android/gms/internal/ads/zziew;

    move-result-object v1

    const-string v3, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-static {v3, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzhla;->zze(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhrq;Lcom/google/android/gms/internal/ads/zziew;)Lcom/google/android/gms/internal/ads/zzhcp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzheg;->zzc:Lcom/google/android/gms/internal/ads/zzhcp;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhee;->zza:Lcom/google/android/gms/internal/ads/zzhee;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzheg;->zzd:Lcom/google/android/gms/internal/ads/zzhln;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhed;->zza:Lcom/google/android/gms/internal/ads/zzhed;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzheg;->zze:Lcom/google/android/gms/internal/ads/zzhkq;

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/internal/ads/zzheg;->zzf:I

    return-void
.end method

.method public static zza(Z)V
    .locals 9

    sget p0, Lcom/google/android/gms/internal/ads/zzheg;->zzf:I

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhjs;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/google/android/gms/internal/ads/zzhhr;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhlv;->zza()Lcom/google/android/gms/internal/ads/zzhlv;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhr;->zza(Lcom/google/android/gms/internal/ads/zzhlv;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhls;->zza()Lcom/google/android/gms/internal/ads/zzhls;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzheg;->zzb:Lcom/google/android/gms/internal/ads/zzhmj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhls;->zzb(Lcom/google/android/gms/internal/ads/zzhmj;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhlr;->zza()Lcom/google/android/gms/internal/ads/zzhlr;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "AES128_CTR_HMAC_SHA256"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhgz;->zze:Lcom/google/android/gms/internal/ads/zzhek;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzheh;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzheh;-><init>([B)V

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzheh;->zza(I)Lcom/google/android/gms/internal/ads/zzheh;

    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzheh;->zzb(I)Lcom/google/android/gms/internal/ads/zzheh;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzheh;->zzd(I)Lcom/google/android/gms/internal/ads/zzheh;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzheh;->zzc(I)Lcom/google/android/gms/internal/ads/zzheh;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzhei;->zzc:Lcom/google/android/gms/internal/ads/zzhei;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzheh;->zzf(Lcom/google/android/gms/internal/ads/zzhei;)Lcom/google/android/gms/internal/ads/zzheh;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzhej;->zzc:Lcom/google/android/gms/internal/ads/zzhej;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzheh;->zze(Lcom/google/android/gms/internal/ads/zzhej;)Lcom/google/android/gms/internal/ads/zzheh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzheh;->zzg()Lcom/google/android/gms/internal/ads/zzhek;

    move-result-object v2

    const-string v8, "AES128_CTR_HMAC_SHA256_RAW"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AES256_CTR_HMAC_SHA256"

    sget-object v8, Lcom/google/android/gms/internal/ads/zzhgz;->zzf:Lcom/google/android/gms/internal/ads/zzhek;

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzheh;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzheh;-><init>([B)V

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzheh;->zza(I)Lcom/google/android/gms/internal/ads/zzheh;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzheh;->zzb(I)Lcom/google/android/gms/internal/ads/zzheh;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzheh;->zzd(I)Lcom/google/android/gms/internal/ads/zzheh;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzheh;->zzc(I)Lcom/google/android/gms/internal/ads/zzheh;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzheh;->zzf(Lcom/google/android/gms/internal/ads/zzhei;)Lcom/google/android/gms/internal/ads/zzheh;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzheh;->zze(Lcom/google/android/gms/internal/ads/zzhej;)Lcom/google/android/gms/internal/ads/zzheh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzheh;->zzg()Lcom/google/android/gms/internal/ads/zzhek;

    move-result-object v2

    const-string v3, "AES256_CTR_HMAC_SHA256_RAW"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhlr;->zzd(Ljava/util/Map;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhlo;->zza()Lcom/google/android/gms/internal/ads/zzhlo;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzheg;->zzd:Lcom/google/android/gms/internal/ads/zzhln;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhek;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhlo;->zzb(Lcom/google/android/gms/internal/ads/zzhln;Ljava/lang/Class;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhlm;->zza()Lcom/google/android/gms/internal/ads/zzhlm;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzheg;->zze:Lcom/google/android/gms/internal/ads/zzhkq;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhlm;->zzb(Lcom/google/android/gms/internal/ads/zzhkq;Ljava/lang/Class;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkr;->zza()Lcom/google/android/gms/internal/ads/zzhkr;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzheg;->zzc:Lcom/google/android/gms/internal/ads/zzhcp;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzhkr;->zzf(Lcom/google/android/gms/internal/ads/zzhcp;IZ)V

    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use AES-CTR-HMAC in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
