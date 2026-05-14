.class final synthetic Lcom/google/android/gms/internal/ads/zzfci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhad;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzfci;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfci;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfci;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfci;->zza:Lcom/google/android/gms/internal/ads/zzfci;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)LN2/o;
    .locals 7

    check-cast p1, Lr0/b;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfck;

    const-string v2, ""

    invoke-direct {p1, v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzfck;-><init>(Ljava/lang/String;I[B)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhav;->zza(Ljava/lang/Object;)LN2/o;

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzigz;->zzc()Lcom/google/android/gms/internal/ads/zzigy;

    move-result-object v2

    iget-object p1, p1, Lr0/b;->a:Ljava/util/AbstractCollection;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr0/c;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzigx;->zzc()Lcom/google/android/gms/internal/ads/zzigw;

    move-result-object v4

    iget v5, v3, Lr0/c;->c:I

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzigw;->zza(I)Lcom/google/android/gms/internal/ads/zzigw;

    iget-wide v5, v3, Lr0/c;->b:J

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzigw;->zzb(J)Lcom/google/android/gms/internal/ads/zzigw;

    iget-wide v5, v3, Lr0/c;->a:J

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzigw;->zzc(J)Lcom/google/android/gms/internal/ads/zzigw;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzigx;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzigy;->zza(Lcom/google/android/gms/internal/ads/zzigx;)Lcom/google/android/gms/internal/ads/zzigy;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzigz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzibi;->zzaN()[B

    move-result-object p1

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfck;

    invoke-direct {v2, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzfck;-><init>(Ljava/lang/String;I[B)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhav;->zza(Ljava/lang/Object;)LN2/o;

    move-result-object p1

    :goto_1
    return-object p1
.end method
