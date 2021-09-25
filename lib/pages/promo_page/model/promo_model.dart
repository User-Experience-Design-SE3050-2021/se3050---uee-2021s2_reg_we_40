class SLTPromoModel {
  final String title, imageUrl, description, amount, route;

  const SLTPromoModel(
      {this.amount, this.description, this.imageUrl, this.title, this.route});

  String getAmount() {
    return this.amount;
  }

  String getTitle() {
    return this.title;
  }

  String getDescription() {
    return this.description;
  }

  String getImageUrl() {
    return this.imageUrl;
  }

  String getRoute() {
    return this.route;
  }
}
