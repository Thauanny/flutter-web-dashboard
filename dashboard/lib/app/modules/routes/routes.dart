const rootRoute = "/";

const columnChartPageDisplayName = "Column Chart";
const columnChartPageRoute = "/columnChart";

const splineChartPageDisplayName = "Spline Chart";
const splineChartPageRoute = "/splineChart";

const funnelChartPageDisplayName = "Funnel Chart";
const funnelChartPageRoute = "/funnelChart";

const stackedChartPageDisplayName = "Stacked Chart";
const stackedChartPageRoute = "/stackedChart";

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItemRoutes = [
  MenuItem(columnChartPageDisplayName, columnChartPageRoute),
  MenuItem(splineChartPageDisplayName, splineChartPageRoute),
  MenuItem(funnelChartPageDisplayName, funnelChartPageRoute),
  MenuItem(stackedChartPageDisplayName, stackedChartPageRoute),
];
