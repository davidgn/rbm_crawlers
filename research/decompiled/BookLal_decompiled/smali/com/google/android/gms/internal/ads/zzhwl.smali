.class public final Lcom/google/android/gms/internal/ads/zzhwl;
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

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhwi;->zza:Lcom/google/android/gms/internal/ads/zzhwi;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhwf;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhdg;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhmj;->zzd(Lcom/google/android/gms/internal/ads/zzhmi;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhmj;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhwl;->zzb:Lcom/google/android/gms/internal/ads/zzhmj;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhwk;->zza:Lcom/google/android/gms/internal/ads/zzhwk;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhwh;

    const-class v3, Lcom/google/android/gms/internal/ads/zzhdh;

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzhmj;->zzd(Lcom/google/android/gms/internal/ads/zzhmi;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhmj;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhwl;->zzc:Lcom/google/android/gms/internal/ads/zzhmj;

    const-string v0, "type.googleapis.com/google.crypto.tink.RsaSsaPssPrivateKey"

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhtd;->zzl()Lcom/google/android/gms/internal/ads/zziew;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzhla;->zzf(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zziew;)Lcom/google/android/gms/internal/ads/zzhdf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhwl;->zzd:Lcom/google/android/gms/internal/ads/zzhdf;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhrq;->zzd:Lcom/google/android/gms/internal/ads/zzhrq;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhtf;->zzi()Lcom/google/android/gms/internal/ads/zziew;

    move-result-object v1

    const-string v2, "type.googleapis.com/google.crypto.tink.RsaSsaPssPublicKey"

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzhla;->zze(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhrq;Lcom/google/android/gms/internal/ads/zziew;)Lcom/google/android/gms/internal/ads/zzhcp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhwl;->zze:Lcom/google/android/gms/internal/ads/zzhcp;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhwj;->zza:Lcom/google/android/gms/internal/ads/zzhwj;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhwl;->zzf:Lcom/google/android/gms/internal/ads/zzhkq;

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/internal/ads/zzhwl;->zzg:I

    return-void
.end method

.method public static zza(Z)V
    .locals 10

    sget p0, Lcom/google/android/gms/internal/ads/zzhwl;->zzg:I

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhjs;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/google/android/gms/internal/ads/zzhxz;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhlv;->zza()Lcom/google/android/gms/internal/ads/zzhlv;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhxz;->zza(Lcom/google/android/gms/internal/ads/zzhlv;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhlr;->zza()Lcom/google/android/gms/internal/ads/zzhlr;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhwd;->zza:Ljava/math/BigInteger;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhwa;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhwa;-><init>([B)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhwb;->zza:Lcom/google/android/gms/internal/ads/zzhwb;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhwa;->zzd(Lcom/google/android/gms/internal/ads/zzhwb;)Lcom/google/android/gms/internal/ads/zzhwa;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhwa;->zze(Lcom/google/android/gms/internal/ads/zzhwb;)Lcom/google/android/gms/internal/ads/zzhwa;

    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhwa;->zzf(I)Lcom/google/android/gms/internal/ads/zzhwa;

    const/16 v6, 0xc00

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhwa;->zza(I)Lcom/google/android/gms/internal/ads/zzhwa;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzhwd;->zza:Ljava/math/BigInteger;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhwa;->zzb(Ljava/math/BigInteger;)Lcom/google/android/gms/internal/ads/zzhwa;

    sget-object v8, Lcom/google/android/gms/internal/ads/zzhwc;->zza:Lcom/google/android/gms/internal/ads/zzhwc;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzhwa;->zzc(Lcom/google/android/gms/internal/ads/zzhwc;)Lcom/google/android/gms/internal/ads/zzhwa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhwa;->zzg()Lcom/google/android/gms/internal/ads/zzhwd;

    move-result-object v2

    const-string v9, "RSA_SSA_PSS_3072_SHA256_F4"

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhwa;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhwa;-><init>([B)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhwa;->zzd(Lcom/google/android/gms/internal/ads/zzhwb;)Lcom/google/android/gms/internal/ads/zzhwa;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhwa;->zze(Lcom/google/android/gms/internal/ads/zzhwb;)Lcom/google/android/gms/internal/ads/zzhwa;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhwa;->zzf(I)Lcom/google/android/gms/internal/ads/zzhwa;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhwa;->zza(I)Lcom/google/android/gms/internal/ads/zzhwa;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhwa;->zzb(Ljava/math/BigInteger;)Lcom/google/android/gms/internal/ads/zzhwa;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhwc;->zzd:Lcom/google/android/gms/internal/ads/zzhwc;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhwa;->zzc(Lcom/google/android/gms/internal/ads/zzhwc;)Lcom/google/android/gms/internal/ads/zzhwa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhwa;->zzg()Lcom/google/android/gms/internal/ads/zzhwd;

    move-result-object v2

    const-string v5, "RSA_SSA_PSS_3072_SHA256_F4_RAW"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "RSA_SSA_PSS_3072_SHA256_SHA256_32_F4"

    sget-object v5, Lcom/google/android/gms/internal/ads/zzhvf;->zzk:Lcom/google/android/gms/internal/ads/zzhwd;

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhwa;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhwa;-><init>([B)V

    sget-object v5, Lcom/google/android/gms/internal/ads/zzhwb;->zzc:Lcom/google/android/gms/internal/ads/zzhwb;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhwa;->zzd(Lcom/google/android/gms/internal/ads/zzhwb;)Lcom/google/android/gms/internal/ads/zzhwa;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhwa;->zze(Lcom/google/android/gms/internal/ads/zzhwb;)Lcom/google/android/gms/internal/ads/zzhwa;

    const/16 v6, 0x40

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhwa;->zzf(I)Lcom/google/android/gms/internal/ads/zzhwa;

    const/16 v9, 0x1000

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzhwa;->zza(I)Lcom/google/android/gms/internal/ads/zzhwa;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhwa;->zzb(Ljava/math/BigInteger;)Lcom/google/android/gms/internal/ads/zzhwa;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzhwa;->zzc(Lcom/google/android/gms/internal/ads/zzhwc;)Lcom/google/android/gms/internal/ads/zzhwa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhwa;->zzg()Lcom/google/android/gms/internal/ads/zzhwd;

    move-result-object v2

    const-string v8, "RSA_SSA_PSS_4096_SHA512_F4"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhwa;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhwa;-><init>([B)V

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhwa;->zzd(Lcom/google/android/gms/internal/ads/zzhwb;)Lcom/google/android/gms/internal/ads/zzhwa;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhwa;->zze(Lcom/google/android/gms/internal/ads/zzhwb;)Lcom/google/android/gms/internal/ads/zzhwa;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhwa;->zzf(I)Lcom/google/android/gms/internal/ads/zzhwa;

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzhwa;->zza(I)Lcom/google/android/gms/internal/ads/zzhwa;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhwa;->zzb(Ljava/math/BigInteger;)Lcom/google/android/gms/internal/ads/zzhwa;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhwa;->zzc(Lcom/google/android/gms/internal/ads/zzhwc;)Lcom/google/android/gms/internal/ads/zzhwa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhwa;->zzg()Lcom/google/android/gms/internal/ads/zzhwd;

    move-result-object v2

    const-string v3, "RSA_SSA_PSS_4096_SHA512_F4_RAW"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "RSA_SSA_PSS_4096_SHA512_SHA512_64_F4"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhvf;->zzl:Lcom/google/android/gms/internal/ads/zzhwd;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhlr;->zzd(Ljava/util/Map;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhls;->zza()Lcom/google/android/gms/internal/ads/zzhls;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhwl;->zzb:Lcom/google/android/gms/internal/ads/zzhmj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhls;->zzb(Lcom/google/android/gms/internal/ads/zzhmj;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhls;->zza()Lcom/google/android/gms/internal/ads/zzhls;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhwl;->zzc:Lcom/google/android/gms/internal/ads/zzhmj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhls;->zzb(Lcom/google/android/gms/internal/ads/zzhmj;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhlm;->zza()Lcom/google/android/gms/internal/ads/zzhlm;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhwl;->zzf:Lcom/google/android/gms/internal/ads/zzhkq;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhwd;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhlm;->zzb(Lcom/google/android/gms/internal/ads/zzhkq;Ljava/lang/Class;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkr;->zza()Lcom/google/android/gms/internal/ads/zzhkr;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhwl;->zzd:Lcom/google/android/gms/internal/ads/zzhdf;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzhkr;->zzf(Lcom/google/android/gms/internal/ads/zzhcp;IZ)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkr;->zza()Lcom/google/android/gms/internal/ads/zzhkr;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhwl;->zze:Lcom/google/android/gms/internal/ads/zzhcp;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzhkr;->zzf(Lcom/google/android/gms/internal/ads/zzhcp;IZ)V

    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use RSA SSA PSS in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
