.class public final Lcom/google/android/gms/internal/ads/zzhnv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhmj;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzhmj;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzhcp;

.field private static final zze:Lcom/google/android/gms/internal/ads/zzhln;

.field private static final zzf:Lcom/google/android/gms/internal/ads/zzhkq;

.field private static final zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhnr;->zza:Lcom/google/android/gms/internal/ads/zzhnr;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhnm;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhnq;

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzhmj;->zzd(Lcom/google/android/gms/internal/ads/zzhmi;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhmj;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhnv;->zzb:Lcom/google/android/gms/internal/ads/zzhmj;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhnu;->zza:Lcom/google/android/gms/internal/ads/zzhnu;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhdd;

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzhmj;->zzd(Lcom/google/android/gms/internal/ads/zzhmi;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhmj;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhnv;->zzc:Lcom/google/android/gms/internal/ads/zzhmj;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhrq;->zzb:Lcom/google/android/gms/internal/ads/zzhrq;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhrk;->zzh()Lcom/google/android/gms/internal/ads/zziew;

    move-result-object v2

    const-string v3, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-static {v3, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzhla;->zze(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhrq;Lcom/google/android/gms/internal/ads/zziew;)Lcom/google/android/gms/internal/ads/zzhcp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhnv;->zzd:Lcom/google/android/gms/internal/ads/zzhcp;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhnt;->zza:Lcom/google/android/gms/internal/ads/zzhnt;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhnv;->zze:Lcom/google/android/gms/internal/ads/zzhln;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhns;->zza:Lcom/google/android/gms/internal/ads/zzhns;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhnv;->zzf:Lcom/google/android/gms/internal/ads/zzhkq;

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/internal/ads/zzhnv;->zzg:I

    return-void
.end method

.method public static zza(Z)V
    .locals 11

    sget p0, Lcom/google/android/gms/internal/ads/zzhnv;->zzg:I

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhjs;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/google/android/gms/internal/ads/zzhpa;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhlv;->zza()Lcom/google/android/gms/internal/ads/zzhlv;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhpa;->zza(Lcom/google/android/gms/internal/ads/zzhlv;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhls;->zza()Lcom/google/android/gms/internal/ads/zzhls;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhnv;->zzb:Lcom/google/android/gms/internal/ads/zzhmj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhls;->zzb(Lcom/google/android/gms/internal/ads/zzhmj;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhls;->zza()Lcom/google/android/gms/internal/ads/zzhls;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhnv;->zzc:Lcom/google/android/gms/internal/ads/zzhmj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhls;->zzb(Lcom/google/android/gms/internal/ads/zzhmj;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhlr;->zza()Lcom/google/android/gms/internal/ads/zzhlr;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "HMAC_SHA256_128BITTAG"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhom;->zza:Lcom/google/android/gms/internal/ads/zzhnz;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhnw;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhnw;-><init>([B)V

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhnw;->zza(I)Lcom/google/android/gms/internal/ads/zzhnw;

    const/16 v5, 0x10

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhnw;->zzb(I)Lcom/google/android/gms/internal/ads/zzhnw;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzhny;->zzd:Lcom/google/android/gms/internal/ads/zzhny;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhnw;->zzc(Lcom/google/android/gms/internal/ads/zzhny;)Lcom/google/android/gms/internal/ads/zzhnw;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzhnx;->zzc:Lcom/google/android/gms/internal/ads/zzhnx;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhnw;->zzd(Lcom/google/android/gms/internal/ads/zzhnx;)Lcom/google/android/gms/internal/ads/zzhnw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhnw;->zze()Lcom/google/android/gms/internal/ads/zzhnz;

    move-result-object v2

    const-string v8, "HMAC_SHA256_128BITTAG_RAW"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhnw;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhnw;-><init>([B)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhnw;->zza(I)Lcom/google/android/gms/internal/ads/zzhnw;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhnw;->zzb(I)Lcom/google/android/gms/internal/ads/zzhnw;

    sget-object v8, Lcom/google/android/gms/internal/ads/zzhny;->zza:Lcom/google/android/gms/internal/ads/zzhny;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzhnw;->zzc(Lcom/google/android/gms/internal/ads/zzhny;)Lcom/google/android/gms/internal/ads/zzhnw;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhnw;->zzd(Lcom/google/android/gms/internal/ads/zzhnx;)Lcom/google/android/gms/internal/ads/zzhnw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhnw;->zze()Lcom/google/android/gms/internal/ads/zzhnz;

    move-result-object v2

    const-string v9, "HMAC_SHA256_256BITTAG"

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhnw;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhnw;-><init>([B)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhnw;->zza(I)Lcom/google/android/gms/internal/ads/zzhnw;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhnw;->zzb(I)Lcom/google/android/gms/internal/ads/zzhnw;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhnw;->zzc(Lcom/google/android/gms/internal/ads/zzhny;)Lcom/google/android/gms/internal/ads/zzhnw;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhnw;->zzd(Lcom/google/android/gms/internal/ads/zzhnx;)Lcom/google/android/gms/internal/ads/zzhnw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhnw;->zze()Lcom/google/android/gms/internal/ads/zzhnz;

    move-result-object v2

    const-string v7, "HMAC_SHA256_256BITTAG_RAW"

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhnw;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhnw;-><init>([B)V

    const/16 v7, 0x40

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhnw;->zza(I)Lcom/google/android/gms/internal/ads/zzhnw;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhnw;->zzb(I)Lcom/google/android/gms/internal/ads/zzhnw;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzhnw;->zzc(Lcom/google/android/gms/internal/ads/zzhny;)Lcom/google/android/gms/internal/ads/zzhnw;

    sget-object v9, Lcom/google/android/gms/internal/ads/zzhnx;->zze:Lcom/google/android/gms/internal/ads/zzhnx;

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzhnw;->zzd(Lcom/google/android/gms/internal/ads/zzhnx;)Lcom/google/android/gms/internal/ads/zzhnw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhnw;->zze()Lcom/google/android/gms/internal/ads/zzhnz;

    move-result-object v2

    const-string v10, "HMAC_SHA512_128BITTAG"

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhnw;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhnw;-><init>([B)V

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhnw;->zza(I)Lcom/google/android/gms/internal/ads/zzhnw;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhnw;->zzb(I)Lcom/google/android/gms/internal/ads/zzhnw;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhnw;->zzc(Lcom/google/android/gms/internal/ads/zzhny;)Lcom/google/android/gms/internal/ads/zzhnw;

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzhnw;->zzd(Lcom/google/android/gms/internal/ads/zzhnx;)Lcom/google/android/gms/internal/ads/zzhnw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhnw;->zze()Lcom/google/android/gms/internal/ads/zzhnz;

    move-result-object v2

    const-string v5, "HMAC_SHA512_128BITTAG_RAW"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhnw;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhnw;-><init>([B)V

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhnw;->zza(I)Lcom/google/android/gms/internal/ads/zzhnw;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhnw;->zzb(I)Lcom/google/android/gms/internal/ads/zzhnw;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzhnw;->zzc(Lcom/google/android/gms/internal/ads/zzhny;)Lcom/google/android/gms/internal/ads/zzhnw;

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzhnw;->zzd(Lcom/google/android/gms/internal/ads/zzhnx;)Lcom/google/android/gms/internal/ads/zzhnw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhnw;->zze()Lcom/google/android/gms/internal/ads/zzhnz;

    move-result-object v2

    const-string v5, "HMAC_SHA512_256BITTAG"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhnw;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhnw;-><init>([B)V

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhnw;->zza(I)Lcom/google/android/gms/internal/ads/zzhnw;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhnw;->zzb(I)Lcom/google/android/gms/internal/ads/zzhnw;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhnw;->zzc(Lcom/google/android/gms/internal/ads/zzhny;)Lcom/google/android/gms/internal/ads/zzhnw;

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzhnw;->zzd(Lcom/google/android/gms/internal/ads/zzhnx;)Lcom/google/android/gms/internal/ads/zzhnw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhnw;->zze()Lcom/google/android/gms/internal/ads/zzhnz;

    move-result-object v2

    const-string v4, "HMAC_SHA512_256BITTAG_RAW"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "HMAC_SHA512_512BITTAG"

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhom;->zzb:Lcom/google/android/gms/internal/ads/zzhnz;

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhnw;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhnw;-><init>([B)V

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhnw;->zza(I)Lcom/google/android/gms/internal/ads/zzhnw;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhnw;->zzb(I)Lcom/google/android/gms/internal/ads/zzhnw;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhnw;->zzc(Lcom/google/android/gms/internal/ads/zzhny;)Lcom/google/android/gms/internal/ads/zzhnw;

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzhnw;->zzd(Lcom/google/android/gms/internal/ads/zzhnx;)Lcom/google/android/gms/internal/ads/zzhnw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhnw;->zze()Lcom/google/android/gms/internal/ads/zzhnz;

    move-result-object v2

    const-string v3, "HMAC_SHA512_512BITTAG_RAW"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhlr;->zzd(Ljava/util/Map;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhlm;->zza()Lcom/google/android/gms/internal/ads/zzhlm;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhnv;->zzf:Lcom/google/android/gms/internal/ads/zzhkq;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhnz;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhlm;->zzb(Lcom/google/android/gms/internal/ads/zzhkq;Ljava/lang/Class;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhlo;->zza()Lcom/google/android/gms/internal/ads/zzhlo;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhnv;->zze:Lcom/google/android/gms/internal/ads/zzhln;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhlo;->zzb(Lcom/google/android/gms/internal/ads/zzhln;Ljava/lang/Class;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkr;->zza()Lcom/google/android/gms/internal/ads/zzhkr;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhnv;->zzd:Lcom/google/android/gms/internal/ads/zzhcp;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzhkr;->zzf(Lcom/google/android/gms/internal/ads/zzhcp;IZ)V

    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use HMAC in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
