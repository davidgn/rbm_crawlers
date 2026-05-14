.class public final Lcom/google/android/gms/internal/ads/zzhyy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzhyy;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzhyy;

.field public static final zzc:Lcom/google/android/gms/internal/ads/zzhyy;

.field public static final zzd:Lcom/google/android/gms/internal/ads/zzhyy;

.field public static final zze:Lcom/google/android/gms/internal/ads/zzhyy;

.field public static final zzf:Lcom/google/android/gms/internal/ads/zzhyy;


# instance fields
.field private final zzg:Lcom/google/android/gms/internal/ads/zzhyx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhyy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhyz;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzhyz;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhyy;-><init>(Lcom/google/android/gms/internal/ads/zzhzg;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhyy;->zza:Lcom/google/android/gms/internal/ads/zzhyy;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhyy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhzd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzhzd;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhyy;-><init>(Lcom/google/android/gms/internal/ads/zzhzg;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhyy;->zzb:Lcom/google/android/gms/internal/ads/zzhyy;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhyy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhzf;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzhzf;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhyy;-><init>(Lcom/google/android/gms/internal/ads/zzhzg;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhyy;->zzc:Lcom/google/android/gms/internal/ads/zzhyy;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhyy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhze;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzhze;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhyy;-><init>(Lcom/google/android/gms/internal/ads/zzhzg;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhyy;->zzd:Lcom/google/android/gms/internal/ads/zzhyy;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhyy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhza;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzhza;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhyy;-><init>(Lcom/google/android/gms/internal/ads/zzhzg;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhyy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhzc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzhzc;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhyy;-><init>(Lcom/google/android/gms/internal/ads/zzhzg;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhyy;->zze:Lcom/google/android/gms/internal/ads/zzhyy;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhyy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhzb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzhzb;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhyy;-><init>(Lcom/google/android/gms/internal/ads/zzhzg;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhyy;->zzf:Lcom/google/android/gms/internal/ads/zzhyy;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhzg;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjt;->zza()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "The Android Project"

    const-string v2, "java.vendor"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhyu;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzhyu;-><init>(Lcom/google/android/gms/internal/ads/zzhzg;[B)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhyy;->zzg:Lcom/google/android/gms/internal/ads/zzhyx;

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhyv;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzhyv;-><init>(Lcom/google/android/gms/internal/ads/zzhzg;[B)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhyw;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzhyw;-><init>(Lcom/google/android/gms/internal/ads/zzhzg;[B)V

    goto :goto_0
.end method

.method public static varargs zza([Ljava/lang/String;)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final zzb(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhyy;->zzg:Lcom/google/android/gms/internal/ads/zzhyx;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzhyx;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
