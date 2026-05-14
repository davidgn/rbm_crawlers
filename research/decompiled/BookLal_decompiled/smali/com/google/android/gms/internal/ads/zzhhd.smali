.class public final Lcom/google/android/gms/internal/ads/zzhhd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhkq;

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhmj;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhhc;->zza:Lcom/google/android/gms/internal/ads/zzhhc;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhhd;->zza:Lcom/google/android/gms/internal/ads/zzhkq;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhhb;->zza:Lcom/google/android/gms/internal/ads/zzhhb;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhha;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhch;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhmj;->zzd(Lcom/google/android/gms/internal/ads/zzhmi;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhmj;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhhd;->zzb:Lcom/google/android/gms/internal/ads/zzhmj;

    return-void
.end method

.method public static zza(Z)V
    .locals 3

    sget p0, Lcom/google/android/gms/internal/ads/zzhjf;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhlv;->zza()Lcom/google/android/gms/internal/ads/zzhlv;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhjf;->zza(Lcom/google/android/gms/internal/ads/zzhlv;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhlr;->zza()Lcom/google/android/gms/internal/ads/zzhlr;

    move-result-object p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "XAES_256_GCM_192_BIT_NONCE"

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhgz;->zzg:Lcom/google/android/gms/internal/ads/zzhhf;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "XAES_256_GCM_192_BIT_NONCE_NO_PREFIX"

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhgz;->zzh:Lcom/google/android/gms/internal/ads/zzhhf;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "XAES_256_GCM_160_BIT_NONCE_NO_PREFIX"

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhgz;->zzi:Lcom/google/android/gms/internal/ads/zzhhf;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X_AES_GCM_8_BYTE_SALT_NO_PREFIX"

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhgz;->zzj:Lcom/google/android/gms/internal/ads/zzhhf;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhlr;->zzd(Ljava/util/Map;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhls;->zza()Lcom/google/android/gms/internal/ads/zzhls;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhhd;->zzb:Lcom/google/android/gms/internal/ads/zzhmj;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhls;->zzb(Lcom/google/android/gms/internal/ads/zzhmj;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhlm;->zza()Lcom/google/android/gms/internal/ads/zzhlm;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhhd;->zza:Lcom/google/android/gms/internal/ads/zzhkq;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhhf;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlm;->zzb(Lcom/google/android/gms/internal/ads/zzhkq;Ljava/lang/Class;)V

    return-void
.end method
