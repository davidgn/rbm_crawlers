.class public final Lcom/google/android/gms/internal/ads/zzhud;
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

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhua;->zza:Lcom/google/android/gms/internal/ads/zzhua;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhtx;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhdg;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhmj;->zzd(Lcom/google/android/gms/internal/ads/zzhmi;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhmj;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhud;->zzb:Lcom/google/android/gms/internal/ads/zzhmj;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhuc;->zza:Lcom/google/android/gms/internal/ads/zzhuc;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhtz;

    const-class v3, Lcom/google/android/gms/internal/ads/zzhdh;

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzhmj;->zzd(Lcom/google/android/gms/internal/ads/zzhmi;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhmj;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhud;->zzc:Lcom/google/android/gms/internal/ads/zzhmj;

    const-string v0, "type.googleapis.com/google.crypto.tink.EcdsaPrivateKey"

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhqx;->zzg()Lcom/google/android/gms/internal/ads/zziew;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzhla;->zzf(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zziew;)Lcom/google/android/gms/internal/ads/zzhdf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhud;->zzd:Lcom/google/android/gms/internal/ads/zzhdf;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhrq;->zzd:Lcom/google/android/gms/internal/ads/zzhrq;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhqz;->zzi()Lcom/google/android/gms/internal/ads/zziew;

    move-result-object v1

    const-string v2, "type.googleapis.com/google.crypto.tink.EcdsaPublicKey"

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzhla;->zze(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhrq;Lcom/google/android/gms/internal/ads/zziew;)Lcom/google/android/gms/internal/ads/zzhcp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhud;->zze:Lcom/google/android/gms/internal/ads/zzhcp;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhub;->zza:Lcom/google/android/gms/internal/ads/zzhub;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhud;->zzf:Lcom/google/android/gms/internal/ads/zzhkq;

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/internal/ads/zzhud;->zzg:I

    return-void
.end method

.method public static zza(Z)V
    .locals 8

    sget p0, Lcom/google/android/gms/internal/ads/zzhud;->zzg:I

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhjs;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/google/android/gms/internal/ads/zzhww;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhlv;->zza()Lcom/google/android/gms/internal/ads/zzhlv;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhww;->zza(Lcom/google/android/gms/internal/ads/zzhlv;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhlr;->zza()Lcom/google/android/gms/internal/ads/zzhlr;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "ECDSA_P256"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhvf;->zza:Lcom/google/android/gms/internal/ads/zzhtv;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ECDSA_P256_IEEE_P1363"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhvf;->zzd:Lcom/google/android/gms/internal/ads/zzhtv;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhtq;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhtq;-><init>([B)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhts;->zza:Lcom/google/android/gms/internal/ads/zzhts;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhtq;->zzc(Lcom/google/android/gms/internal/ads/zzhts;)Lcom/google/android/gms/internal/ads/zzhtq;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhtr;->zza:Lcom/google/android/gms/internal/ads/zzhtr;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhtq;->zzb(Lcom/google/android/gms/internal/ads/zzhtr;)Lcom/google/android/gms/internal/ads/zzhtq;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhtt;->zza:Lcom/google/android/gms/internal/ads/zzhtt;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhtq;->zza(Lcom/google/android/gms/internal/ads/zzhtt;)Lcom/google/android/gms/internal/ads/zzhtq;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhtu;->zzd:Lcom/google/android/gms/internal/ads/zzhtu;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhtq;->zzd(Lcom/google/android/gms/internal/ads/zzhtu;)Lcom/google/android/gms/internal/ads/zzhtq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhtq;->zze()Lcom/google/android/gms/internal/ads/zzhtv;

    move-result-object v2

    const-string v4, "ECDSA_P256_RAW"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ECDSA_P256_IEEE_P1363_WITHOUT_PREFIX"

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhvf;->zzf:Lcom/google/android/gms/internal/ads/zzhtv;

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ECDSA_P384"

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhvf;->zzb:Lcom/google/android/gms/internal/ads/zzhtv;

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ECDSA_P384_IEEE_P1363"

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhvf;->zze:Lcom/google/android/gms/internal/ads/zzhtv;

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhtq;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhtq;-><init>([B)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhts;->zzc:Lcom/google/android/gms/internal/ads/zzhts;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhtq;->zzc(Lcom/google/android/gms/internal/ads/zzhts;)Lcom/google/android/gms/internal/ads/zzhtq;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhtr;->zzb:Lcom/google/android/gms/internal/ads/zzhtr;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhtq;->zzb(Lcom/google/android/gms/internal/ads/zzhtr;)Lcom/google/android/gms/internal/ads/zzhtq;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzhtt;->zzb:Lcom/google/android/gms/internal/ads/zzhtt;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhtq;->zza(Lcom/google/android/gms/internal/ads/zzhtt;)Lcom/google/android/gms/internal/ads/zzhtq;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzhtu;->zza:Lcom/google/android/gms/internal/ads/zzhtu;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhtq;->zzd(Lcom/google/android/gms/internal/ads/zzhtu;)Lcom/google/android/gms/internal/ads/zzhtq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhtq;->zze()Lcom/google/android/gms/internal/ads/zzhtv;

    move-result-object v2

    const-string v7, "ECDSA_P384_SHA512"

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhtq;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhtq;-><init>([B)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhts;->zzb:Lcom/google/android/gms/internal/ads/zzhts;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhtq;->zzc(Lcom/google/android/gms/internal/ads/zzhts;)Lcom/google/android/gms/internal/ads/zzhtq;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhtq;->zzb(Lcom/google/android/gms/internal/ads/zzhtr;)Lcom/google/android/gms/internal/ads/zzhtq;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhtq;->zza(Lcom/google/android/gms/internal/ads/zzhtt;)Lcom/google/android/gms/internal/ads/zzhtq;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhtq;->zzd(Lcom/google/android/gms/internal/ads/zzhtu;)Lcom/google/android/gms/internal/ads/zzhtq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhtq;->zze()Lcom/google/android/gms/internal/ads/zzhtv;

    move-result-object v2

    const-string v3, "ECDSA_P384_SHA384"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ECDSA_P521"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhvf;->zzc:Lcom/google/android/gms/internal/ads/zzhtv;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ECDSA_P521_IEEE_P1363"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhvf;->zzg:Lcom/google/android/gms/internal/ads/zzhtv;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhlr;->zzd(Ljava/util/Map;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhls;->zza()Lcom/google/android/gms/internal/ads/zzhls;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhud;->zzb:Lcom/google/android/gms/internal/ads/zzhmj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhls;->zzb(Lcom/google/android/gms/internal/ads/zzhmj;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhls;->zza()Lcom/google/android/gms/internal/ads/zzhls;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhud;->zzc:Lcom/google/android/gms/internal/ads/zzhmj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhls;->zzb(Lcom/google/android/gms/internal/ads/zzhmj;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhlm;->zza()Lcom/google/android/gms/internal/ads/zzhlm;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhud;->zzf:Lcom/google/android/gms/internal/ads/zzhkq;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhtv;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhlm;->zzb(Lcom/google/android/gms/internal/ads/zzhkq;Ljava/lang/Class;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkr;->zza()Lcom/google/android/gms/internal/ads/zzhkr;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhud;->zzd:Lcom/google/android/gms/internal/ads/zzhdf;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzhkr;->zzf(Lcom/google/android/gms/internal/ads/zzhcp;IZ)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkr;->zza()Lcom/google/android/gms/internal/ads/zzhkr;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhud;->zze:Lcom/google/android/gms/internal/ads/zzhcp;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzhkr;->zzf(Lcom/google/android/gms/internal/ads/zzhcp;IZ)V

    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use ECDSA in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
