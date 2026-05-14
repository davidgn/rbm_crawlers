.class public final Lcom/google/android/gms/internal/ads/zzhvz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhmj;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzhmj;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzhdf;

.field private static final zze:Lcom/google/android/gms/internal/ads/zzhcp;

.field private static final zzf:Lcom/google/android/gms/internal/ads/zzhkq;

.field private static final zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhvw;->zza:Lcom/google/android/gms/internal/ads/zzhvw;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhvt;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhdg;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhmj;->zzd(Lcom/google/android/gms/internal/ads/zzhmi;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhmj;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhvz;->zzb:Lcom/google/android/gms/internal/ads/zzhmj;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhvy;->zza:Lcom/google/android/gms/internal/ads/zzhvy;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhvv;

    const-class v3, Lcom/google/android/gms/internal/ads/zzhdh;

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzhmj;->zzd(Lcom/google/android/gms/internal/ads/zzhmi;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhmj;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhvz;->zzc:Lcom/google/android/gms/internal/ads/zzhmj;

    const-string v0, "type.googleapis.com/google.crypto.tink.RsaSsaPkcs1PrivateKey"

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhsv;->zzl()Lcom/google/android/gms/internal/ads/zziew;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzhla;->zzf(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zziew;)Lcom/google/android/gms/internal/ads/zzhdf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhvz;->zzd:Lcom/google/android/gms/internal/ads/zzhdf;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhrq;->zzd:Lcom/google/android/gms/internal/ads/zzhrq;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhsx;->zzi()Lcom/google/android/gms/internal/ads/zziew;

    move-result-object v1

    const-string v2, "type.googleapis.com/google.crypto.tink.RsaSsaPkcs1PublicKey"

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzhla;->zze(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhrq;Lcom/google/android/gms/internal/ads/zziew;)Lcom/google/android/gms/internal/ads/zzhcp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhvz;->zze:Lcom/google/android/gms/internal/ads/zzhcp;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhvx;->zza:Lcom/google/android/gms/internal/ads/zzhvx;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhvz;->zzf:Lcom/google/android/gms/internal/ads/zzhkq;

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/internal/ads/zzhvz;->zzg:I

    return-void
.end method

.method public static zza(Z)V
    .locals 7

    sget p0, Lcom/google/android/gms/internal/ads/zzhvz;->zzg:I

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhjs;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/google/android/gms/internal/ads/zzhxq;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhlv;->zza()Lcom/google/android/gms/internal/ads/zzhlv;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhxq;->zza(Lcom/google/android/gms/internal/ads/zzhlv;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhlr;->zza()Lcom/google/android/gms/internal/ads/zzhlr;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "RSA_SSA_PKCS1_3072_SHA256_F4"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhvf;->zzh:Lcom/google/android/gms/internal/ads/zzhvr;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhvr;->zza:Ljava/math/BigInteger;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhvo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhvo;-><init>([B)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhvp;->zza:Lcom/google/android/gms/internal/ads/zzhvp;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhvo;->zzd(Lcom/google/android/gms/internal/ads/zzhvp;)Lcom/google/android/gms/internal/ads/zzhvo;

    const/16 v4, 0xc00

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhvo;->zza(I)Lcom/google/android/gms/internal/ads/zzhvo;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhvr;->zza:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhvo;->zzb(Ljava/math/BigInteger;)Lcom/google/android/gms/internal/ads/zzhvo;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzhvq;->zzd:Lcom/google/android/gms/internal/ads/zzhvq;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhvo;->zzc(Lcom/google/android/gms/internal/ads/zzhvq;)Lcom/google/android/gms/internal/ads/zzhvo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhvo;->zze()Lcom/google/android/gms/internal/ads/zzhvr;

    move-result-object v2

    const-string v6, "RSA_SSA_PKCS1_3072_SHA256_F4_RAW"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "RSA_SSA_PKCS1_3072_SHA256_F4_WITHOUT_PREFIX"

    sget-object v6, Lcom/google/android/gms/internal/ads/zzhvf;->zzi:Lcom/google/android/gms/internal/ads/zzhvr;

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "RSA_SSA_PKCS1_4096_SHA512_F4"

    sget-object v6, Lcom/google/android/gms/internal/ads/zzhvf;->zzj:Lcom/google/android/gms/internal/ads/zzhvr;

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhvo;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhvo;-><init>([B)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhvp;->zzc:Lcom/google/android/gms/internal/ads/zzhvp;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhvo;->zzd(Lcom/google/android/gms/internal/ads/zzhvp;)Lcom/google/android/gms/internal/ads/zzhvo;

    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhvo;->zza(I)Lcom/google/android/gms/internal/ads/zzhvo;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhvo;->zzb(Ljava/math/BigInteger;)Lcom/google/android/gms/internal/ads/zzhvo;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhvo;->zzc(Lcom/google/android/gms/internal/ads/zzhvq;)Lcom/google/android/gms/internal/ads/zzhvo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhvo;->zze()Lcom/google/android/gms/internal/ads/zzhvr;

    move-result-object v2

    const-string v3, "RSA_SSA_PKCS1_4096_SHA512_F4_RAW"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhlr;->zzd(Ljava/util/Map;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhls;->zza()Lcom/google/android/gms/internal/ads/zzhls;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhvz;->zzb:Lcom/google/android/gms/internal/ads/zzhmj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhls;->zzb(Lcom/google/android/gms/internal/ads/zzhmj;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhls;->zza()Lcom/google/android/gms/internal/ads/zzhls;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhvz;->zzc:Lcom/google/android/gms/internal/ads/zzhmj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhls;->zzb(Lcom/google/android/gms/internal/ads/zzhmj;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhlm;->zza()Lcom/google/android/gms/internal/ads/zzhlm;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhvz;->zzf:Lcom/google/android/gms/internal/ads/zzhkq;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhvr;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhlm;->zzb(Lcom/google/android/gms/internal/ads/zzhkq;Ljava/lang/Class;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkr;->zza()Lcom/google/android/gms/internal/ads/zzhkr;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhvz;->zzd:Lcom/google/android/gms/internal/ads/zzhdf;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzhkr;->zzf(Lcom/google/android/gms/internal/ads/zzhcp;IZ)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkr;->zza()Lcom/google/android/gms/internal/ads/zzhkr;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhvz;->zze:Lcom/google/android/gms/internal/ads/zzhcp;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzhkr;->zzf(Lcom/google/android/gms/internal/ads/zzhcp;IZ)V

    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use RSA SSA PKCS1 in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
