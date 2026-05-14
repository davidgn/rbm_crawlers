.class public final Lcom/google/android/gms/internal/ads/zzhfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhmj;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzhkq;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzhcp;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhfn;->zza:Lcom/google/android/gms/internal/ads/zzhfn;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhfl;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhch;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhmj;->zzd(Lcom/google/android/gms/internal/ads/zzhmi;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhmj;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhfo;->zzb:Lcom/google/android/gms/internal/ads/zzhmj;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhfm;->zza:Lcom/google/android/gms/internal/ads/zzhfm;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhfo;->zzc:Lcom/google/android/gms/internal/ads/zzhkq;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhrq;->zzb:Lcom/google/android/gms/internal/ads/zzhrq;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhqp;->zze()Lcom/google/android/gms/internal/ads/zziew;

    move-result-object v1

    const-string v3, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    invoke-static {v3, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzhla;->zze(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhrq;Lcom/google/android/gms/internal/ads/zziew;)Lcom/google/android/gms/internal/ads/zzhcp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhfo;->zzd:Lcom/google/android/gms/internal/ads/zzhcp;

    return-void
.end method

.method public static zza(Z)V
    .locals 4

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhjs;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/google/android/gms/internal/ads/zzhiq;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhlv;->zza()Lcom/google/android/gms/internal/ads/zzhlv;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhiq;->zza(Lcom/google/android/gms/internal/ads/zzhlv;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhls;->zza()Lcom/google/android/gms/internal/ads/zzhls;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhfo;->zzb:Lcom/google/android/gms/internal/ads/zzhmj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhls;->zzb(Lcom/google/android/gms/internal/ads/zzhmj;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhlm;->zza()Lcom/google/android/gms/internal/ads/zzhlm;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhfo;->zzc:Lcom/google/android/gms/internal/ads/zzhkq;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhfq;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhlm;->zzb(Lcom/google/android/gms/internal/ads/zzhkq;Ljava/lang/Class;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhlr;->zza()Lcom/google/android/gms/internal/ads/zzhlr;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhfp;->zza:Lcom/google/android/gms/internal/ads/zzhfp;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhfq;->zzb(Lcom/google/android/gms/internal/ads/zzhfp;)Lcom/google/android/gms/internal/ads/zzhfq;

    move-result-object v2

    const-string v3, "CHACHA20_POLY1305"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhfp;->zzc:Lcom/google/android/gms/internal/ads/zzhfp;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhfq;->zzb(Lcom/google/android/gms/internal/ads/zzhfp;)Lcom/google/android/gms/internal/ads/zzhfq;

    move-result-object v2

    const-string v3, "CHACHA20_POLY1305_RAW"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhlr;->zzd(Ljava/util/Map;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkr;->zza()Lcom/google/android/gms/internal/ads/zzhkr;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhfo;->zzd:Lcom/google/android/gms/internal/ads/zzhcp;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzhkr;->zzb(Lcom/google/android/gms/internal/ads/zzhcp;Z)V

    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Registering ChaCha20Poly1305 is not supported in FIPS mode"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
